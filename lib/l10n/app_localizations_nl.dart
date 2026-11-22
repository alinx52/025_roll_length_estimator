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

  @override
  String get helpTooltip => 'Hulp en gids';

  @override
  String get helpTitle => 'Gids voor rollengteschatting';

  @override
  String get helpProblemSolvedTitle => 'Opgelost probleem';

  @override
  String get helpProblemSolvedContent =>
      'Schat de resterende lengte van opgerold materiaal (tape, folie, papier, stof) op basis van buitendiameter, kerndiameter en dikte.';

  @override
  String get helpHowToUseTitle => 'Gebruiksaanwijzing';

  @override
  String get helpHowToUseContent =>
      'Voer buitendiameter (D), kerndiameter (d) en materiaaldikte (t) in dezelfde eenheid in (bijv. mm) en tik op Schatten.';

  @override
  String get helpReadingResultsTitle => 'Resultaten aflezen';

  @override
  String get helpReadingResultsContent =>
      'Toont de geschatte totale lengte (meters en voet), het aantal omwentelingen (lagen) en het oppervlak van de dwarsdoorsnede.';

  @override
  String get helpExampleTitle => 'Voorbeeld';

  @override
  String get helpExampleContent =>
      'Buiten: 200 mm | Kern: 76 mm | Dikte: 0.1 mm\nResultaat: ~268,8 meter (~882 ft) over ~620 lagen.';

  @override
  String get helpLimitsTitle => 'Validatie & Beperkingen';

  @override
  String get helpLimitsContent =>
      'Archimedische spiraalbenadering. Houdt geen rekening met wikkelspanning, materiaalrek of ongelijkmatige dikte.';

  @override
  String get helpDataAndPrivacyTitle => 'Lokale gegevens & Advertenties';

  @override
  String get helpDataAndPrivacyContent =>
      'Alle schattingen worden lokaal op uw telefoon uitgevoerd zonder netwerkverkeer. Onderaan staat een AdMob-banner.';
}
