// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'रोल लंबाई अनुमानक';

  @override
  String get appDescription =>
      'समान रूप से और कसकर लपेटे गए रोल की सामग्री की लंबाई का अनुमान लगाएँ।';

  @override
  String get languageMenuTooltip => 'भाषा चुनें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get appearanceMenuTooltip => 'रूप चुनें';

  @override
  String get appearanceMaterial => 'मटेरियल';

  @override
  String get appearanceFlat => 'सपाट';

  @override
  String get appearanceSoft => 'नरम';

  @override
  String get unitMillimetres => 'मिलीमीटर (mm)';

  @override
  String get unitInches => 'इंच (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'बाहरी व्यास';

  @override
  String get coreDiameter => 'कोर व्यास';

  @override
  String get materialThickness => 'सामग्री की मोटाई';

  @override
  String get estimateLength => 'लंबाई का अनुमान लगाएँ';

  @override
  String get clearMeasurements => 'माप साफ़ करें';

  @override
  String get estimatedLength => 'अनुमानित लंबाई';

  @override
  String metresResult(String value) {
    return '$value मी';
  }

  @override
  String feetResult(String value) {
    return '$value फ़ीट';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return 'चुनी गई इकाई में: $value $unit';
  }

  @override
  String get cautionNote =>
      'ढीली लपेट, दबाव, खाली जगह और मोटाई में अंतर से वास्तविक लंबाई बदल सकती है।';

  @override
  String get errorAllMeasurements => 'तीनों माप दर्ज करें';

  @override
  String get errorPositive => 'शून्य से बड़े मान इस्तेमाल करें';

  @override
  String get errorOuterLarger => 'बाहरी व्यास कोर व्यास से बड़ा होना चाहिए';

  @override
  String get errorValidNumbers => 'मान्य संख्याएँ दर्ज करें';
}
