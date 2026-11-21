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
}
