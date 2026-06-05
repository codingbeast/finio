import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:finio/app/settings_providers.dart';
import 'package:finio/app/router.dart';
import 'package:finio/core/theme/app_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData lightTheme = AppTheme.buildLightTheme();
    final ThemeData darkTheme = AppTheme.buildDarkTheme();

    return MaterialApp.router(
      title: 'Finio',
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ref.watch(themeModeProvider),

      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
