import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:finio/services/preferences_service.dart';

//
// THEME MODE PROVIDER (Modern Notifier)
//
final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(() {
  return ThemeModeNotifier();
});

class ThemeModeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() {
    final saved = PreferencesService.getThemeMode();

    if (saved == 'light') return ThemeMode.light;
    if (saved == 'dark') return ThemeMode.dark;
    return ThemeMode.system;
  }

  void setMode(ThemeMode mode) {
    state = mode;
    PreferencesService.setThemeMode(mode.name);
  }
}

//
// DYNAMIC COLOR PROVIDER
//
final dynamicColorProvider = NotifierProvider<DynamicColorNotifier, bool>(() {
  return DynamicColorNotifier();
});

class DynamicColorNotifier extends Notifier<bool> {
  @override
  bool build() {
    final saved = PreferencesService.getDynamicColor();
    return saved ?? true; // default ON
  }

  void toggle(bool value) {
    state = value;
    PreferencesService.setDynamicColor(value);
  }
}

//
// LANGUAGE PROVIDER
//
final languageProvider = NotifierProvider<LanguageNotifier, Locale>(() {
  return LanguageNotifier();
});

class LanguageNotifier extends Notifier<Locale> {
  @override
  Locale build() {
    final saved = PreferencesService.getLanguage();
    return Locale(saved ?? 'en'); // default EN
  }

  void setLanguage(Locale locale) {
    state = locale;
    PreferencesService.setLanguage(locale.languageCode);
  }
}
