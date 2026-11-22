// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Estimador de longitud de rollo';

  @override
  String get appDescription =>
      'Estima la longitud de un material enrollado de forma uniforme y compacta.';

  @override
  String get languageMenuTooltip => 'Elegir idioma';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get appearanceMenuTooltip => 'Elegir apariencia';

  @override
  String get appearanceMaterial => 'Con relieve';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get unitMillimetres => 'Milímetros (mm)';

  @override
  String get unitInches => 'Pulgadas (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Diámetro exterior';

  @override
  String get coreDiameter => 'Diámetro del núcleo';

  @override
  String get materialThickness => 'Grosor del material';

  @override
  String get estimateLength => 'Estimar longitud';

  @override
  String get clearMeasurements => 'Borrar medidas';

  @override
  String get estimatedLength => 'Longitud estimada';

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
    return 'En la unidad elegida: $value $unit';
  }

  @override
  String get cautionNote =>
      'El enrollado suelto, la compresión, los huecos y las variaciones de grosor pueden cambiar la longitud real.';

  @override
  String get errorAllMeasurements => 'Introduce las tres medidas';

  @override
  String get errorPositive => 'Usa valores mayores que cero';

  @override
  String get errorOuterLarger =>
      'El diámetro exterior debe ser mayor que el del núcleo';

  @override
  String get errorValidNumbers => 'Introduce números válidos';

  @override
  String get helpTooltip => 'Ayuda y guía';

  @override
  String get helpTitle => 'Guía del estimador de longitud de rollos';

  @override
  String get helpProblemSolvedTitle => 'Problema que resuelve';

  @override
  String get helpProblemSolvedContent =>
      'Estima la longitud lineal restante de bobinas de material (cinta, film, papel, tela) a partir del diámetro exterior, núcleo y grosor.';

  @override
  String get helpHowToUseTitle => 'Cómo usar';

  @override
  String get helpHowToUseContent =>
      'Introduce el diámetro exterior (D), diámetro del núcleo (d) y grosor (t) con la misma unidad (ej. mm), y pulsa Estimar longitud.';

  @override
  String get helpReadingResultsTitle => 'Interpretación de resultados';

  @override
  String get helpReadingResultsContent =>
      'Muestra la longitud total estimada (metros y pies), número de vueltas (capas) y área transversal del rollo.';

  @override
  String get helpExampleTitle => 'Ejemplo';

  @override
  String get helpExampleContent =>
      'Exterior: 200 mm | Núcleo: 76 mm | Grosor: 0.1 mm\nResultado: ~268.8 metros (~882 pies) en ~620 vueltas.';

  @override
  String get helpLimitsTitle => 'Validaciones y límites';

  @override
  String get helpLimitsContent =>
      'Aproximación geométrica en espiral de Arquímedes. No tiene en cuenta la tensión del bobinado, elasticidad del material ni grosor irregular.';

  @override
  String get helpDataAndPrivacyTitle => 'Datos locales y anuncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todas las estimaciones se ejecutan en el teléfono sin llamadas a la red. Se muestra un banner estándar de AdMob en la parte inferior.';
}
