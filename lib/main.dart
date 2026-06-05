import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:finio/core/constants/language_manager.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:finio/app/app.dart';
import 'package:finio/services/preferences_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Enable edge-to-edge layout
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  await Hive.initFlutter();
  await Hive.openBox('transactions_v3');

  await Future.wait([
    PreferencesService.init(),
    EasyLocalization.ensureInitialized(),
  ]);

  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales,
      path: assetPathLocalisations, 
      fallbackLocale: englishLocale,
      child: const ProviderScope(child: MyApp()),
    ),
  );
}
