import 'package:flutter/material.dart';
import 'package:finio/core/theme/dark_theme.dart';
import 'package:finio/core/theme/light_theme.dart';

class AppTheme {
  static ThemeData buildLightTheme() {
    return getLightTheme();
  }

  static ThemeData buildDarkTheme() {
    return getDarkTheme();
  }
}
