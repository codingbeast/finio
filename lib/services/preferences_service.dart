import 'package:hive_flutter/hive_flutter.dart';

class PreferencesService {
  static const String _boxName = 'app_preferences';
  static late Box _box;

  /// Initialize Hive box at app startup
  static Future<void> init() async {
    // Note: Hive.initFlutter() should be called before this in main.dart
    _box = await Hive.openBox(_boxName);
  }

  static Box get _prefs {
    if (!Hive.isBoxOpen(_boxName)) {
      throw StateError('PreferencesService not initialized. Call init() first.');
    }
    return _box;
  }

  // Theme mode
  static const String keyThemeMode = 'theme_mode';
  static Future<void> setThemeMode(String mode) async =>
      _prefs.put(keyThemeMode, mode);

  static String? getThemeMode() => _prefs.get(keyThemeMode);

  // Dynamic color
  static const String keyDynamicColor = 'dynamic_color';
  static Future<void> setDynamicColor(bool value) async =>
      _prefs.put(keyDynamicColor, value);

  static bool? getDynamicColor() => _prefs.get(keyDynamicColor);

  // Language
  static const String keyLanguage = 'app_language';
  static Future<void> setLanguage(String lang) async =>
      _prefs.put(keyLanguage, lang);

  static String? getLanguage() => _prefs.get(keyLanguage);
}
