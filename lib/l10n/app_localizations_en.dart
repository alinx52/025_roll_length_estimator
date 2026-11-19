// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Roll Length Estimator';

  @override
  String get appDescription =>
      'Estimate the material length remaining on a uniformly wound roll from its measured diameters and material thickness.';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageKorean => '한국어';

  @override
  String get privacyPolicy => 'Privacy policy';
}
