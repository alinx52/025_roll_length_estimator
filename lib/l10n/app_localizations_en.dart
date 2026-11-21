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
}
