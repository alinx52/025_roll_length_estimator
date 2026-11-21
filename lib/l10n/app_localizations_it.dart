// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Stima lunghezza rotolo';

  @override
  String get appDescription =>
      'Stima la lunghezza di un materiale avvolto in modo uniforme e compatto.';

  @override
  String get languageMenuTooltip => 'Scegli lingua';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get appearanceMenuTooltip => 'Scegli aspetto';

  @override
  String get appearanceMaterial => 'Materico';

  @override
  String get appearanceFlat => 'Piatto';

  @override
  String get appearanceSoft => 'Morbido';

  @override
  String get unitMillimetres => 'Millimetri (mm)';

  @override
  String get unitInches => 'Pollici (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Diametro esterno';

  @override
  String get coreDiameter => 'Diametro del nucleo';

  @override
  String get materialThickness => 'Spessore del materiale';

  @override
  String get estimateLength => 'Stima lunghezza';

  @override
  String get clearMeasurements => 'Cancella misure';

  @override
  String get estimatedLength => 'Lunghezza stimata';

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
    return 'Nell’unità selezionata: $value $unit';
  }

  @override
  String get cautionNote =>
      'Avvolgimento lento, compressione, spazi e variazioni di spessore possono cambiare la lunghezza reale.';

  @override
  String get errorAllMeasurements => 'Inserisci tutte e tre le misure';

  @override
  String get errorPositive => 'Usa valori maggiori di zero';

  @override
  String get errorOuterLarger =>
      'Il diametro esterno deve essere maggiore del diametro del nucleo';

  @override
  String get errorValidNumbers => 'Inserisci numeri validi';
}
