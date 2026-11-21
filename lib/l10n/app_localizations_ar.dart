// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'مقدّر طول اللفة';

  @override
  String get appDescription =>
      'قدّر طول المادة في لفة ملفوفة بإحكام وبشكل منتظم.';

  @override
  String get languageMenuTooltip => 'اختيار اللغة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get appearanceMenuTooltip => 'اختيار المظهر';

  @override
  String get appearanceMaterial => 'مادي';

  @override
  String get appearanceFlat => 'مسطّح';

  @override
  String get appearanceSoft => 'ناعم';

  @override
  String get unitMillimetres => 'ملليمتر (mm)';

  @override
  String get unitInches => 'بوصة (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'القطر الخارجي';

  @override
  String get coreDiameter => 'قطر القلب';

  @override
  String get materialThickness => 'سُمك المادة';

  @override
  String get estimateLength => 'تقدير الطول';

  @override
  String get clearMeasurements => 'مسح القياسات';

  @override
  String get estimatedLength => 'الطول المقدّر';

  @override
  String metresResult(String value) {
    return '$value م';
  }

  @override
  String feetResult(String value) {
    return '$value قدم';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return 'بالوحدة المحددة: $value $unit';
  }

  @override
  String get cautionNote =>
      'قد يؤدي اللف غير المحكم والانضغاط والفجوات وتفاوت السُمك إلى تغيير الطول الفعلي.';

  @override
  String get errorAllMeasurements => 'أدخل القياسات الثلاثة كلها';

  @override
  String get errorPositive => 'استخدم قيماً أكبر من صفر';

  @override
  String get errorOuterLarger => 'يجب أن يكون القطر الخارجي أكبر من قطر القلب';

  @override
  String get errorValidNumbers => 'أدخل أرقاماً صالحة';
}
