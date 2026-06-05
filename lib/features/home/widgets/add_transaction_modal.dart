import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:finio/core/constants/app_typography.dart';
import 'package:finio/core/constants/app_sizes.dart';
import 'package:finio/core/constants/app_radius.dart';
import 'package:finio/features/home/domain/category_model.dart';
import 'package:finio/features/home/domain/transaction_model.dart';
import 'package:finio/features/home/providers/home_data_provider.dart';

class AddTransactionModal extends ConsumerStatefulWidget {
  const AddTransactionModal({super.key});

  @override
  ConsumerState<AddTransactionModal> createState() => _AddTransactionModalState();
}

class _AddTransactionModalState extends ConsumerState<AddTransactionModal> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  
  CategoryModel? _selectedCategory;
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _titleController.addListener(_onFormChanged);
    _amountController.addListener(_onFormChanged);
  }

  void _onFormChanged() {
    setState(() {});
  }

  bool get _isFormValid {
    return _titleController.text.trim().isNotEmpty &&
           _amountController.text.trim().isNotEmpty &&
           _selectedCategory != null;
  }

  Future<void> _selectDateAndTime() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (date != null) {
      if (!mounted) return;
      final TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedDate),
      );
      if (time != null) {
        setState(() {
          _selectedDate = DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );
        });
      }
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _saveTransaction() {
    if (_titleController.text.isEmpty || _amountController.text.isEmpty || _selectedCategory == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('transaction.fillAllFields'.tr())),
      );
      return;
    }

    final amount = double.tryParse(_amountController.text);
    if (amount == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('transaction.validAmount'.tr())),
      );
      return;
    }

    final newTransaction = TransactionModel(
      title: _titleController.text,
      amount: amount,
      icon: _selectedCategory!.icon,
      date: _selectedDate,
      categoryName: _selectedCategory!.name,
    );

    ref.read(recentTransactionsProvider.notifier).addTransaction(newTransaction);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final categories = ref.watch(categoriesProvider);
    
    // Bottom sheet needs padding for keyboard and safe area (navigation bar)
    final bottomInsets = MediaQuery.of(context).viewInsets.bottom;
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;

    return Container(
      padding: EdgeInsets.only(
        left: AppSizes.s24,
        right: AppSizes.s24,
        top: AppSizes.s24,
        bottom: AppSizes.s24 + bottomInsets + safeAreaBottom,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(AppSizes.s24)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'transaction.addTitle'.tr(),
              style: AppTypography.headlineS(context).copyWith(
                color: colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.s24),
            
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'transaction.titleLabel'.tr(),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppRadius.medium)),
              ),
              style: TextStyle(color: colorScheme.onSurface),
            ),
            const SizedBox(height: AppSizes.s16),
            
            TextField(
              controller: _amountController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'transaction.amountLabel'.tr(),
                prefixText: '₹ ',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppRadius.medium)),
              ),
              style: TextStyle(color: colorScheme.onSurface),
            ),
            const SizedBox(height: AppSizes.s16),
            
            GestureDetector(
              onTap: _selectDateAndTime,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.s12, vertical: AppSizes.s16),
                decoration: BoxDecoration(
                  border: Border.all(color: colorScheme.outline),
                  borderRadius: BorderRadius.circular(AppRadius.medium),
                ),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today, color: colorScheme.onSurfaceVariant, size: AppSizes.s20),
                    const SizedBox(width: AppSizes.s12),
                    Expanded(
                      child: Text(
                        DateFormat.yMMMd(context.locale.toString()).add_jm().format(_selectedDate),
                        style: TextStyle(color: colorScheme.onSurface),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSizes.s16),
            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.s12),
              decoration: BoxDecoration(
                border: Border.all(color: colorScheme.outline),
                borderRadius: BorderRadius.circular(AppRadius.medium),
              ),
              child: DropdownButton<CategoryModel>(
                value: _selectedCategory,
                isExpanded: true,
                underline: const SizedBox(),
                hint: Text('transaction.categoryHint'.tr(), style: TextStyle(color: colorScheme.onSurfaceVariant)),
                dropdownColor: colorScheme.surface,
                items: categories.map((category) {
                return DropdownMenuItem(
                  value: category,
                  child: Row(
                    children: [
                      Icon(category.icon, color: category.color, size: AppSizes.s20),
                      const SizedBox(width: AppSizes.s8),
                      Text(category.name.tr(), style: TextStyle(color: colorScheme.onSurface)),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  _selectedCategory = val;
                });
              },
            ),
          ),
          const SizedBox(height: AppSizes.s24),
            
            FilledButton(
              onPressed: _isFormValid ? _saveTransaction : null,
              child: Text('actions.saveTransaction'.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
