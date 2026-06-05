// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _en_US = {
  "actions": {
    "comingSoon": "coming soon"
  }
};
static const Map<String,dynamic> _hi_IN = {
  "actions": {
    "comingSoon": "जल्द आ रहा है"
  }
};
static const Map<String,dynamic> _mr_IN = {
  "actions": {
    "comingSoon": "लवकरच येत आहे"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": _en_US, "hi_IN": _hi_IN, "mr_IN": _mr_IN};
}
