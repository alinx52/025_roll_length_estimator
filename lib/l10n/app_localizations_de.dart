// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Rollenlängen-Schätzer';

  @override
  String get appDescription =>
      'Schätzt die Materiallänge einer gleichmäßig und fest gewickelten Rolle.';

  @override
  String get languageMenuTooltip => 'Sprache auswählen';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get appearanceMenuTooltip => 'Darstellung auswählen';

  @override
  String get appearanceMaterial => 'Plastisch';

  @override
  String get appearanceFlat => 'Flach';

  @override
  String get appearanceSoft => 'Sanft';

  @override
  String get unitMillimetres => 'Millimeter (mm)';

  @override
  String get unitInches => 'Zoll (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Außendurchmesser';

  @override
  String get coreDiameter => 'Kerndurchmesser';

  @override
  String get materialThickness => 'Materialstärke';

  @override
  String get estimateLength => 'Länge schätzen';

  @override
  String get clearMeasurements => 'Messwerte löschen';

  @override
  String get estimatedLength => 'Geschätzte Länge';

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
    return 'In der gewählten Einheit: $value $unit';
  }

  @override
  String get cautionNote =>
      'Lockere Wicklung, Kompression, Lücken und unterschiedliche Materialstärken können die tatsächliche Länge verändern.';

  @override
  String get errorAllMeasurements => 'Alle drei Messwerte eingeben';

  @override
  String get errorPositive => 'Werte größer als null verwenden';

  @override
  String get errorOuterLarger =>
      'Der Außendurchmesser muss größer als der Kerndurchmesser sein';

  @override
  String get errorValidNumbers => 'Gültige Zahlen eingeben';

  @override
  String get helpTooltip => 'Hilfe & Anleitung';

  @override
  String get helpTitle => 'Rollenlängen-Schätzer-Leitfaden';

  @override
  String get helpProblemSolvedTitle => 'Gelöstes Problem';

  @override
  String get helpProblemSolvedContent =>
      'Schätzt offline die verbleibende Länge von aufgerolltem Material (Band, Folie, Papier, Stoff) anhand von Außendurchmesser, Kern und Dicke.';

  @override
  String get helpHowToUseTitle => 'Bedienung';

  @override
  String get helpHowToUseContent =>
      'Geben Sie Außendurchmesser (D), Kerndurchmesser (d) und Materialstärke (t) in derselben Einheit (z.B. mm) ein und tippen Sie auf Schätzen.';

  @override
  String get helpReadingResultsTitle => 'Ergebnisse verstehen';

  @override
  String get helpReadingResultsContent =>
      'Zeigt geschätzte Gesamtlänge (Meter und Fuß), Anzahl der Wicklungen (Lagen) und Rollenquerschnittsfläche an.';

  @override
  String get helpExampleTitle => 'Beispiel';

  @override
  String get helpExampleContent =>
      'Außen: 200 mm | Kern: 76 mm | Dicke: 0.1 mm\nErgebnis: ca. 268,8 Meter (~882 Fuß) bei ca. 620 Lagen.';

  @override
  String get helpLimitsTitle => 'Validierung & Grenzen';

  @override
  String get helpLimitsContent =>
      'Archimedische Spiralen-Näherung. Berücksichtigt weder Wickelspannung noch Materialdehnung oder Dickenschwankungen.';

  @override
  String get helpDataAndPrivacyTitle => 'Lokale Daten & Werbung';

  @override
  String get helpDataAndPrivacyContent =>
      'Alle Schätzungen laufen lokal auf Ihrem Telefon ohne Netzwerkaufrufe. Unten wird ein AdMob-Banner angezeigt.';
}
