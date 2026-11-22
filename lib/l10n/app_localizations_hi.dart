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

  @override
  String get helpTooltip => 'सहायता और मार्गदर्शिका';

  @override
  String get helpTitle => 'रोल लंबाई अनुमानक मार्गदर्शिका';

  @override
  String get helpProblemSolvedTitle => 'समस्या का समाधान';

  @override
  String get helpProblemSolvedContent =>
      'बाहरी व्यास, कोर व्यास और मोटाई से घाव रोल सामग्री (टेप, फिल्म, कागज, कपड़ा) की शेष रैखिक लंबाई का अनुमान लगाता है।';

  @override
  String get helpHowToUseTitle => 'उपयोग कैसे करें';

  @override
  String get helpHowToUseContent =>
      'समान माप इकाइयों (उदा. मिमी) का उपयोग करके बाहरी व्यास (D), कोर व्यास (d), और सामग्री की मोटाई (t) दर्ज करें, फिर अनुमान लगाएं दबाएं।';

  @override
  String get helpReadingResultsTitle => 'परिणाम कैसे समझें';

  @override
  String get helpReadingResultsContent =>
      'अनुमानित कुल लंबाई (मीटर और फीट), कुल घुमाव (परतें) और क्रॉस-अनुभागीय सामग्री क्षेत्र प्रदर्शित करता है।';

  @override
  String get helpExampleTitle => 'उदाहरण';

  @override
  String get helpExampleContent =>
      'बाहरी: 200 मिमी | कोर: 76 मिमी | मोटाई: 0.1 मिमी\nपरिणाम: ~620 घुमावों में ~268.8 मीटर (~882 फीट)।';

  @override
  String get helpLimitsTitle => 'सत्यापन और सीमाएं';

  @override
  String get helpLimitsContent =>
      'आर्किमिडीज सर्पिल ज्यामितीय सन्निकटन। घुमावदार तनाव, सामग्री खिंचाव, या असमान मोटाई को ध्यान में नहीं रखता है।';

  @override
  String get helpDataAndPrivacyTitle => 'स्थानीय डेटा और विज्ञापन';

  @override
  String get helpDataAndPrivacyContent =>
      'सभी अनुमान नेटवर्क कॉल के बिना फोन पर स्थानीय रूप से चलते हैं। नीचे एक AdMob बैनर दिखाया गया है।';
}
