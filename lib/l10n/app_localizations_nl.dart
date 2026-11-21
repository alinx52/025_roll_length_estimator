// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Schatting rollengte';

  @override
  String get appDescription =>
      'Schat de materiaallengte op een gelijkmatig en strak gewikkelde rol.';

  @override
  String get languageMenuTooltip => 'Taal kiezen';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get appearanceMenuTooltip => 'Weergave kiezen';

  @override
  String get appearanceMaterial => 'Materiaal';

  @override
  String get appearanceFlat => 'Vlak';

  @override
  String get appearanceSoft => 'Zacht';

  @override
  String get unitMillimetres => 'Millimeter (mm)';

  @override
  String get unitInches => 'Inch (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Buitendiameter';

  @override
  String get coreDiameter => 'Kerndiameter';

  @override
  String get materialThickness => 'Materiaaldikte';

  @override
  String get estimateLength => 'Lengte schatten';

  @override
  String get clearMeasurements => 'Metingen wissen';

  @override
  String get estimatedLength => 'Geschatte lengte';

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
    return 'In de gekozen eenheid: $value $unit';
  }

  @override
  String get cautionNote =>
      'Los wikkelen, compressie, openingen en verschillen in dikte kunnen de werkelijke lengte veranderen.';

  @override
  String get errorAllMeasurements => 'Voer alle drie de metingen in';

  @override
  String get errorPositive => 'Gebruik waarden groter dan nul';

  @override
  String get errorOuterLarger =>
      'De buitendiameter moet groter zijn dan de kerndiameter';

  @override
  String get errorValidNumbers => 'Voer geldige getallen in';
}
