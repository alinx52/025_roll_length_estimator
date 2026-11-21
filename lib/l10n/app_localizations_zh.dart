// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '卷材长度估算器';

  @override
  String get appDescription => '估算均匀紧密卷绕的卷材长度。';

  @override
  String get languageMenuTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceMenuTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get unitMillimetres => '毫米 (mm)';

  @override
  String get unitInches => '英寸 (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => '外径';

  @override
  String get coreDiameter => '卷芯直径';

  @override
  String get materialThickness => '材料厚度';

  @override
  String get estimateLength => '估算长度';

  @override
  String get clearMeasurements => '清除测量值';

  @override
  String get estimatedLength => '估算长度';

  @override
  String metresResult(String value) {
    return '$value 米';
  }

  @override
  String feetResult(String value) {
    return '$value 英尺';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return '按所选单位：$value $unit';
  }

  @override
  String get cautionNote => '卷绕松紧、压缩、间隙和厚度差异会使实际长度发生变化。';

  @override
  String get errorAllMeasurements => '请输入全部三个测量值';

  @override
  String get errorPositive => '请输入大于零的值';

  @override
  String get errorOuterLarger => '外径必须大于卷芯直径';

  @override
  String get errorValidNumbers => '请输入有效数字';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get appTitle => '卷材长度估算器';

  @override
  String get appDescription => '估算均匀紧密卷绕的卷材长度。';

  @override
  String get languageMenuTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceMenuTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get unitMillimetres => '毫米 (mm)';

  @override
  String get unitInches => '英寸 (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => '外径';

  @override
  String get coreDiameter => '卷芯直径';

  @override
  String get materialThickness => '材料厚度';

  @override
  String get estimateLength => '估算长度';

  @override
  String get clearMeasurements => '清除测量值';

  @override
  String get estimatedLength => '估算长度';

  @override
  String metresResult(String value) {
    return '$value 米';
  }

  @override
  String feetResult(String value) {
    return '$value 英尺';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return '按所选单位：$value $unit';
  }

  @override
  String get cautionNote => '卷绕松紧、压缩、间隙和厚度差异会使实际长度发生变化。';

  @override
  String get errorAllMeasurements => '请输入全部三个测量值';

  @override
  String get errorPositive => '请输入大于零的值';

  @override
  String get errorOuterLarger => '外径必须大于卷芯直径';

  @override
  String get errorValidNumbers => '请输入有效数字';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => '卷材長度估算器';

  @override
  String get appDescription => '估算均勻緊密捲繞的卷材長度。';

  @override
  String get languageMenuTooltip => '選擇語言';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get appearanceMenuTooltip => '選擇外觀';

  @override
  String get appearanceMaterial => '質感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get unitMillimetres => '毫米 (mm)';

  @override
  String get unitInches => '英吋 (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => '外徑';

  @override
  String get coreDiameter => '捲芯直徑';

  @override
  String get materialThickness => '材料厚度';

  @override
  String get estimateLength => '估算長度';

  @override
  String get clearMeasurements => '清除測量值';

  @override
  String get estimatedLength => '估算長度';

  @override
  String metresResult(String value) {
    return '$value 公尺';
  }

  @override
  String feetResult(String value) {
    return '$value 英尺';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return '依所選單位：$value $unit';
  }

  @override
  String get cautionNote => '捲繞鬆緊、壓縮、間隙和厚度差異可能使實際長度有所不同。';

  @override
  String get errorAllMeasurements => '請輸入全部三個測量值';

  @override
  String get errorPositive => '請使用大於零的值';

  @override
  String get errorOuterLarger => '外徑必須大於捲芯直徑';

  @override
  String get errorValidNumbers => '請輸入有效數字';
}
