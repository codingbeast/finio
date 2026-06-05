
import 'package:flutter/material.dart';


enum LanguageType { english, hindi, marathi }

const String english = "en";
const String hindi = "hi";
const String marathi = "mr";
const String assetPathLocalisations = "assets/translations";
const Locale englishLocale = Locale("en", "US");
const Locale hindiLocale = Locale("hi", "IN");
const Locale marathiLocale = Locale("mr", "IN");

/// Single source of truth for all locales the app supports.
/// Add new locales here — [main.dart] and the language dialog both use this.
const List<Locale> supportedLocales = [
  englishLocale,
  hindiLocale,
  marathiLocale,
];

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return english;
      case LanguageType.hindi:
        return hindi;
      case LanguageType.marathi:
        return marathi;
    }
  }
}

extension LocaleExtension on Locale {
  LanguageType getLanguageType() {
    switch (languageCode) {
      case english:
        return LanguageType.english;
      case hindi:
        return LanguageType.hindi;
      case marathi:
        return LanguageType.marathi;
      default:
        return LanguageType.english;
    }
  }
}

extension LocaleDisplayNameExtension on Locale {
  String get displayName {
    switch (languageCode) {
      case english:
        return "English";
      case hindi:
        return "हिंदी";
      case marathi:
        return "मराठी";
      default:
        return "Unknown";
    }
  }
}
