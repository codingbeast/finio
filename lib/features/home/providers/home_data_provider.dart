import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:finio/features/home/domain/category_model.dart';
import 'package:finio/features/home/domain/transaction_model.dart';

class SelectedCategory extends Notifier<String?> {
  @override
  String? build() => null;

  void toggle(String category) {
    state = state == category ? null : category;
  }
}

final selectedCategoryProvider = NotifierProvider<SelectedCategory, String?>(SelectedCategory.new);

final categoriesProvider = Provider<List<CategoryModel>>((ref) {
  return const [
    CategoryModel(name: 'categories.food', icon: Icons.restaurant, amount: 450.0, color: Colors.orange),
    CategoryModel(name: 'categories.travel', icon: Icons.flight, amount: 820.0, color: Colors.blue),
    CategoryModel(name: 'categories.shopping', icon: Icons.shopping_bag, amount: 320.0, color: Colors.purple),
    CategoryModel(name: 'categories.bills', icon: Icons.receipt, amount: 600.0, color: Colors.teal),
  ];
});

class RecentTransactionsNotifier extends Notifier<List<TransactionModel>> {
  final _boxName = 'transactions_v3';

  @override
  List<TransactionModel> build() {
    final box = Hive.box(_boxName);
    final stored = box.get('recent_transactions') as List<dynamic>?;
    
    if (stored != null && stored.isNotEmpty) {
      return stored.map((e) => TransactionModel.fromMap(e as Map<dynamic, dynamic>)).toList();
    }
    
    final list = _generateMockList();
    box.put('recent_transactions', list.map((e) => e.toMap()).toList());
    return list;
  }

  void addTransaction(TransactionModel tx) {
    state = [tx, ...state];
    final box = Hive.box(_boxName);
    box.put('recent_transactions', state.map((e) => e.toMap()).toList());
  }

  List<TransactionModel> _generateMockList() {
    final random = Random(42);
    final sampleTx = [
      TransactionModel(title: 'Uber', amount: 12.50, icon: Icons.directions_car, date: DateTime.now(), categoryName: 'categories.travel'),
      TransactionModel(title: 'Starbucks', amount: 6.20, icon: Icons.local_cafe, date: DateTime.now(), categoryName: 'categories.food'),
      TransactionModel(title: 'Apple Music', amount: 9.99, icon: Icons.music_note, date: DateTime.now(), categoryName: 'categories.bills'),
      TransactionModel(title: 'Grocery Store', amount: 84.30, icon: Icons.shopping_cart, date: DateTime.now(), categoryName: 'categories.food'),
      TransactionModel(title: 'Amazon', amount: 35.90, icon: Icons.shopping_bag, date: DateTime.now(), categoryName: 'categories.shopping'),
      TransactionModel(title: 'Gym', amount: 40.00, icon: Icons.fitness_center, date: DateTime.now(), categoryName: 'categories.bills'),
      TransactionModel(title: 'Restaurant', amount: 120.00, icon: Icons.restaurant, date: DateTime.now(), categoryName: 'categories.food'),
    ];

    return List.generate(57, (index) {
      final sample = sampleTx[random.nextInt(sampleTx.length)];
      final finalAmount = sample.amount + random.nextDouble() * 15;
      
      DateTime date;
      if (index == 0) {
        date = DateTime.now().subtract(const Duration(minutes: 30));
      } else if (index == 1) {
        date = DateTime.now().subtract(const Duration(hours: 5));
      } else if (index < 5) {
        date = DateTime.now().subtract(const Duration(days: 1, hours: 2));
      } else {
        date = DateTime.now().subtract(Duration(days: index - 2, hours: random.nextInt(12)));
      }

      return TransactionModel(
        title: sample.title,
        date: date,
        amount: finalAmount,
        icon: sample.icon,
        categoryName: sample.categoryName,
      );
    });
  }
}

final recentTransactionsProvider = NotifierProvider<RecentTransactionsNotifier, List<TransactionModel>>(RecentTransactionsNotifier.new);

final filteredTransactionsProvider = Provider<List<TransactionModel>>((ref) {
  final transactions = ref.watch(recentTransactionsProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);
  
  if (selectedCategory == null) {
    return transactions;
  }
  
  return transactions.where((tx) => tx.categoryName == selectedCategory).toList();
});
