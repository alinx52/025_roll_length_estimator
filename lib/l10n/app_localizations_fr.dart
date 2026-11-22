// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Estimateur de longueur de rouleau';

  @override
  String get appDescription =>
      'Estimez la longueur d’un matériau enroulé uniformément et fermement.';

  @override
  String get languageMenuTooltip => 'Choisir la langue';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get appearanceMenuTooltip => 'Choisir l’apparence';

  @override
  String get appearanceMaterial => 'En relief';

  @override
  String get appearanceFlat => 'Plate';

  @override
  String get appearanceSoft => 'Douce';

  @override
  String get unitMillimetres => 'Millimètres (mm)';

  @override
  String get unitInches => 'Pouces (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Diamètre extérieur';

  @override
  String get coreDiameter => 'Diamètre du mandrin';

  @override
  String get materialThickness => 'Épaisseur du matériau';

  @override
  String get estimateLength => 'Estimer la longueur';

  @override
  String get clearMeasurements => 'Effacer les mesures';

  @override
  String get estimatedLength => 'Longueur estimée';

  @override
  String metresResult(String value) {
    return '$value m';
  }

  @override
  String feetResult(String value) {
    return '$value pi';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return 'Dans l’unité choisie : $value $unit';
  }

  @override
  String get cautionNote =>
      'Un enroulement lâche, la compression, les espaces et les variations d’épaisseur peuvent modifier la longueur réelle.';

  @override
  String get errorAllMeasurements => 'Saisissez les trois mesures';

  @override
  String get errorPositive => 'Utilisez des valeurs supérieures à zéro';

  @override
  String get errorOuterLarger =>
      'Le diamètre extérieur doit être supérieur à celui du mandrin';

  @override
  String get errorValidNumbers => 'Saisissez des nombres valides';

  @override
  String get helpTooltip => 'Aide et guide';

  @override
  String get helpTitle => 'Guide de l\'estimateur de longueur de rouleau';

  @override
  String get helpProblemSolvedTitle => 'Problème résolu';

  @override
  String get helpProblemSolvedContent =>
      'Estime la longueur restante d\'un matériau en rouleau (ruban, film, papier, tissu) d\'après le diamètre extérieur, l\'âme et l\'épaisseur.';

  @override
  String get helpHowToUseTitle => 'Mode d\'emploi';

  @override
  String get helpHowToUseContent =>
      'Entrez le diamètre extérieur (D), le diamètre de l\'âme (d) et l\'épaisseur (t) dans la même unité (ex. mm), puis appuyez sur Estimer.';

  @override
  String get helpReadingResultsTitle => 'Lecture des résultats';

  @override
  String get helpReadingResultsContent =>
      'Affiche la longueur totale estimée (mètres et pieds), le nombre de tours (couches) et l\'aire de la section enroulée.';

  @override
  String get helpExampleTitle => 'Exemple';

  @override
  String get helpExampleContent =>
      'Extérieur : 200 mm | Âme : 76 mm | Épaisseur : 0.1 mm\nRésultat : ~268,8 mètres (~882 pi) sur ~620 tours.';

  @override
  String get helpLimitsTitle => 'Validations et limites';

  @override
  String get helpLimitsContent =>
      'Approximation géométrique par spirale d\'Archimède. Ne prend pas en compte la tension d\'enroulement ni l\'élasticité du matériau.';

  @override
  String get helpDataAndPrivacyTitle => 'Données locales et publicités';

  @override
  String get helpDataAndPrivacyContent =>
      'Tous les calculs s\'exécutent localement sans appels réseau. Une bannière AdMob standard est affichée en bas.';
}
