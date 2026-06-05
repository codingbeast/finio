import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:finio/core/constants/app_typography.dart';
import 'package:finio/core/constants/app_padding.dart';
import 'package:finio/core/constants/app_sizes.dart';
import 'package:finio/core/constants/app_radius.dart';
import 'package:finio/core/constants/app_opacity.dart';
import 'package:finio/core/constants/language_manager.dart';
import 'package:finio/app/settings_providers.dart';
import 'package:finio/features/home/providers/home_data_provider.dart';
import 'package:finio/features/home/widgets/add_transaction_modal.dart';

String _formatDate(BuildContext context, DateTime date) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(const Duration(days: 1));
  final dateToCheck = DateTime(date.year, date.month, date.day);

  final locale = context.locale.toString();
  final timeStr = DateFormat.jm(locale).format(date);

  if (dateToCheck == today) {
    return '${"transaction.today".tr()}, $timeStr';
  } else if (dateToCheck == yesterday) {
    return '${"transaction.yesterday".tr()}, $timeStr';
  } else {
    return DateFormat.yMMMd(locale).add_jm().format(date);
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Colors from Theme
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'home.summary'.tr(),
          style: AppTypography.headlineS(context),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => _showSettingsModal(context),
          ),
        ],
      ),
      body: SafeArea(
        bottom: true,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(
                left: AppPadding.p16,
                right: AppPadding.p16,
                top: AppPadding.p16,
                bottom: AppSizes.s24,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSpendSummaryCard(context, colorScheme),
                    const SizedBox(height: AppSizes.s24),
                    Divider(
                      color: colorScheme.outlineVariant.withValues(
                        alpha: AppOpacity.half,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _StickyCategoryDelegate(
                height: AppSizes.s230,
                backgroundColor: colorScheme.surface,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p16,
                      ),
                      child: Text(
                        'home.categories'.tr(),
                        style: AppTypography.titleM(context),
                      ),
                    ),
                    const SizedBox(height: AppSizes.s16),
                    Padding(
                      padding: const EdgeInsets.only(left: AppPadding.p16),
                      child: _buildCategoriesScroll(context, ref, colorScheme),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: colorScheme.outlineVariant.withValues(
                        alpha: AppOpacity.half,
                      ),
                    ),
                    const SizedBox(height: AppSizes.s24),
                    Text(
                      'home.recentTransactions'.tr(),
                      style: AppTypography.titleM(context),
                    ),
                    const SizedBox(height: AppSizes.s16),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(
                left: AppPadding.p16,
                right: AppPadding.p16,
                bottom: AppSizes.s120,
              ),
              sliver: _buildTransactionsList(context, ref, colorScheme),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (ctx) => const AddTransactionModal(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSpendSummaryCard(BuildContext context, ColorScheme colorScheme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppPadding.p20),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(AppRadius.mediumLarge),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'home.totalSpend'.tr(),
            style: AppTypography.bodyM(context).copyWith(
              color: colorScheme.onPrimaryContainer.withValues(
                alpha: AppOpacity.high,
              ),
            ),
          ),
          const SizedBox(height: AppSizes.s8),
          Text(
            '₹2,450.00',
            style: AppTypography.headlineL(context).copyWith(
              color: colorScheme.onPrimaryContainer,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSizes.s12),
          Row(
            children: [
              const Icon(
                Icons.arrow_downward,
                color: Colors.green,
                size: AppSizes.s16,
              ),
              const SizedBox(width: AppSizes.s4),
              Text(
                'home.vsLastMonth'.tr(),
                style: AppTypography.bodyS(
                  context,
                ).copyWith(color: Colors.green, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesScroll(
    BuildContext context,
    WidgetRef ref,
    ColorScheme colorScheme,
  ) {
    final categories = ref.watch(categoriesProvider);
    final selectedCategory = ref.watch(selectedCategoryProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: categories.map((cat) {
          final catColor = cat.color;
          final isSelected = selectedCategory == cat.name;
          return GestureDetector(
            onTap: () {
              ref.read(selectedCategoryProvider.notifier).toggle(cat.name);
            },
            child: Container(
              width: AppSizes.s120,
              margin: const EdgeInsets.only(right: AppSizes.s16),
              padding: const EdgeInsets.all(AppSizes.s16),
              decoration: BoxDecoration(
                color: isSelected
                    ? catColor.withValues(alpha: AppOpacity.veryLow)
                    : colorScheme.surface,
                borderRadius: BorderRadius.circular(AppRadius.large),
                border: Border.all(
                  color: isSelected
                      ? catColor
                      : colorScheme.outlineVariant.withValues(
                          alpha: AppOpacity.half,
                        ),
                  width: isSelected ? 2 : 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow.withValues(
                      alpha: AppOpacity.hover,
                    ),
                    blurRadius: AppSizes.s10,
                    offset: const Offset(0, AppSizes.s4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSizes.s10),
                    decoration: BoxDecoration(
                      color: catColor.withValues(alpha: AppOpacity.light),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(cat.icon, size: AppSizes.s26, color: catColor),
                  ),
                  const SizedBox(height: AppSizes.s16),
                  Text(
                    cat.name.tr(),
                    style: AppTypography.bodyS(context).copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSizes.s4),
                  Text(
                    '₹${cat.amount.toStringAsFixed(0)}',
                    style: AppTypography.titleM(
                      context,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildTransactionsList(
    BuildContext context,
    WidgetRef ref,
    ColorScheme colorScheme,
  ) {
    final transactions = ref.watch(filteredTransactionsProvider);

    if (transactions.isEmpty) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.s32),
          child: Center(
            child: Text(
              'home.noTransactions'.tr(),
              style: AppTypography.bodyM(
                context,
              ).copyWith(color: colorScheme.onSurfaceVariant),
            ),
          ),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final tx = transactions[index];
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: colorScheme.surfaceContainerHighest,
            child: Icon(tx.icon, color: colorScheme.onSurfaceVariant),
          ),
          title: Text(tx.title, style: AppTypography.titleS(context)),
          subtitle: Text(
            _formatDate(context, tx.date),
            style: AppTypography.bodyS(context),
          ),
          trailing: Text(
            tx.amountString,
            style: AppTypography.titleS(
              context,
            ).copyWith(color: colorScheme.onSurface),
          ),
        );
      }, childCount: transactions.length),
    );
  }

  void _showSettingsModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Consumer(
          builder: (context, ref, child) {
            final currentTheme = ref.watch(themeModeProvider);
            final colorScheme = Theme.of(context).colorScheme;
            return Container(
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppSizes.s28),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppSizes.s24,
                  right: AppSizes.s24,
                  top: AppSizes.s16,
                  bottom: AppSizes.s16 + MediaQuery.of(context).padding.bottom,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: AppSizes.s40,
                        height: AppSizes.s4,
                        decoration: BoxDecoration(
                          color: colorScheme.outlineVariant.withValues(
                            alpha: AppOpacity.half,
                          ),
                          borderRadius: BorderRadius.circular(AppSizes.s10),
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSizes.s24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'settings.title'.tr(),
                          style: AppTypography.headlineS(
                            context,
                          ).copyWith(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Container(
                            padding: const EdgeInsets.all(AppSizes.s8),
                            decoration: BoxDecoration(
                              color: colorScheme.surfaceContainerHighest,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.close,
                              size: AppSizes.s18,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.s32),
                    Text(
                      'settings.appearance'.tr(),
                      style: AppTypography.titleS(
                        context,
                      ).copyWith(color: colorScheme.primary),
                    ),
                    const SizedBox(height: AppSizes.s16),
                    Row(
                      children: [
                        _buildThemeOption(
                          context,
                          'settings.system'.tr(),
                          Icons.brightness_auto,
                          ThemeMode.system,
                          currentTheme,
                          ref,
                          colorScheme,
                        ),
                        const SizedBox(width: AppSizes.s12),
                        _buildThemeOption(
                          context,
                          'settings.light'.tr(),
                          Icons.light_mode,
                          ThemeMode.light,
                          currentTheme,
                          ref,
                          colorScheme,
                        ),
                        const SizedBox(width: AppSizes.s12),
                        _buildThemeOption(
                          context,
                          'settings.dark'.tr(),
                          Icons.dark_mode,
                          ThemeMode.dark,
                          currentTheme,
                          ref,
                          colorScheme,
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.s32),
                    Text(
                      'settings.language'.tr(),
                      style: AppTypography.titleS(
                        context,
                      ).copyWith(color: colorScheme.primary),
                    ),
                    const SizedBox(height: AppSizes.s16),
                    Column(
                      children: supportedLocales.map((locale) {
                        final isSelected =
                            context.locale.languageCode == locale.languageCode;
                        return GestureDetector(
                          onTap: () {
                            context.setLocale(locale);
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: AppSizes.s12),
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSizes.s20,
                              vertical: AppSizes.s16,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? colorScheme.primaryContainer
                                  : colorScheme.surface,
                              borderRadius: BorderRadius.circular(
                                AppRadius.mediumLarge,
                              ),
                              border: Border.all(
                                color: isSelected
                                    ? colorScheme.primary
                                    : colorScheme.outlineVariant.withValues(
                                        alpha: AppOpacity.low,
                                      ),
                                width: isSelected ? 2 : 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  locale.displayName,
                                  style: AppTypography.titleM(context).copyWith(
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.w500,
                                    color: isSelected
                                        ? colorScheme.onPrimaryContainer
                                        : colorScheme.onSurface,
                                  ),
                                ),
                                if (isSelected)
                                  Icon(
                                    Icons.check_circle,
                                    color: colorScheme.primary,
                                  ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: AppSizes.s24),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildThemeOption(
    BuildContext context,
    String title,
    IconData icon,
    ThemeMode mode,
    ThemeMode currentMode,
    WidgetRef ref,
    ColorScheme colorScheme,
  ) {
    final isSelected = currentMode == mode;
    return Expanded(
      child: GestureDetector(
        onTap: () => ref.read(themeModeProvider.notifier).setMode(mode),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.s16),
          decoration: BoxDecoration(
            color: isSelected
                ? colorScheme.primaryContainer
                : colorScheme.surface,
            borderRadius: BorderRadius.circular(AppRadius.mediumLarge),
            border: Border.all(
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.outlineVariant.withValues(
                      alpha: AppOpacity.low,
                    ),
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                color: isSelected
                    ? colorScheme.primary
                    : colorScheme.onSurfaceVariant,
              ),
              const SizedBox(height: AppSizes.s8),
              Text(
                title,
                style: AppTypography.bodyS(context).copyWith(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                  color: isSelected
                      ? colorScheme.onPrimaryContainer
                      : colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StickyCategoryDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;
  final Color backgroundColor;

  _StickyCategoryDelegate({
    required this.child,
    required this.height,
    required this.backgroundColor,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.only(bottom: AppSizes.s16),
      child: child,
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant _StickyCategoryDelegate oldDelegate) {
    return child != oldDelegate.child ||
        backgroundColor != oldDelegate.backgroundColor;
  }
}
