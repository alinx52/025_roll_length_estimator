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
      'Estimate the length on a uniformly and tightly wound roll.';

  @override
  String get languageMenuTooltip => 'Choose language';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get appearanceMenuTooltip => 'Choose appearance';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flat';

  @override
  String get appearanceSoft => 'Soft';

  @override
  String get unitMillimetres => 'Millimetres (mm)';

  @override
  String get unitInches => 'Inches (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Outer diameter';

  @override
  String get coreDiameter => 'Core diameter';

  @override
  String get materialThickness => 'Material thickness';

  @override
  String get estimateLength => 'Estimate length';

  @override
  String get clearMeasurements => 'Clear measurements';

  @override
  String get estimatedLength => 'Estimated length';

  @override
  String metresResult(String value) {
    return '$value m';
  }

  @override
  String feetResult(String value) {
    return '$value ft';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return 'In selected unit: $value $unit';
  }

  @override
  String get cautionNote =>
      'Loose winding, compression, gaps, and thickness variation can change the real length.';

  @override
  String get errorAllMeasurements => 'Enter all three measurements';

  @override
  String get errorPositive => 'Use values greater than zero';

  @override
  String get errorOuterLarger =>
      'Outer diameter must be larger than core diameter';

  @override
  String get errorValidNumbers => 'Enter valid numbers';

  @override
  String get helpTooltip => 'Help & Guide';

  @override
  String get helpTitle => 'Roll Length Estimator Guide';

  @override
  String get helpProblemSolvedTitle => 'Problem Solved';

  @override
  String get helpProblemSolvedContent =>
      'Estimates the remaining linear length of wound roll materials (tape, film, paper, foil, fabric) from outer diameter, core diameter, and thickness offline.';

  @override
  String get helpHowToUseTitle => 'How to Use';

  @override
  String get helpHowToUseContent =>
      'Enter the Outer Diameter (D), Core Diameter (d), and Material Thickness (t) using matching measurement units (e.g. mm), then tap Estimate length.';

  @override
  String get helpReadingResultsTitle => 'Reading Results';

  @override
  String get helpReadingResultsContent =>
      'Displays estimated total length (meters and feet), total wound turns (layers), and cross-sectional wound material area.';

  @override
  String get helpExampleTitle => 'Example';

  @override
  String get helpExampleContent =>
      'Outer: 200 mm | Core: 76 mm | Thickness: 0.1 mm\nResult: ~268.8 meters (~882 ft) across ~620 wound turns.';

  @override
  String get helpLimitsTitle => 'Validation & Limitations';

  @override
  String get helpLimitsContent =>
      'Archimedean spiral geometric approximation. Does not account for winding tension compaction, material stretch, or uneven layer thickness.';

  @override
  String get helpDataAndPrivacyTitle => 'Local Data & Ads';

  @override
  String get helpDataAndPrivacyContent =>
      'All estimations run locally on your phone without network calls or storage permissions. An AdMob banner is displayed at the bottom.';
}
