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

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => '卷材长度估算指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '离线通过外径、卷芯直径和材料厚度，精准估算卷装材料（胶带、薄膜、纸张、织物等）的剩余展开总长度，无需解卷测量。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '使用相同的测量单位（如毫米 mm）输入外径（D）、卷芯直径（d）和材料厚度（t），然后点击“估算长度”。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent => '展示估算的总展开长度（米与英尺）、总卷绕圈数（层数）以及卷材截面面积。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '外径: 200 mm | 卷芯: 76 mm | 厚度: 0.1 mm\n结果: 估算长度约 268.8 米 (~882 英尺)，卷绕约 620 圈。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '基于阿基米德螺旋公式的几何数学估算。不计入卷绕张力压实松紧度、材料弹性延展伸长或厚度不均带来的物理误差。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有估算均在手机本地离线运行，无需网络通信与存储权限。屏幕底部展示标准AdMob横幅广告。';
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

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => '卷材长度估算指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '离线通过外径、卷芯直径和材料厚度，精准估算卷装材料（胶带、薄膜、纸张、织物等）的剩余展开总长度，无需解卷测量。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '使用相同的测量单位（如毫米 mm）输入外径（D）、卷芯直径（d）和材料厚度（t），然后点击“估算长度”。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent => '展示估算的总展开长度（米与英尺）、总卷绕圈数（层数）以及卷材截面面积。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '外径: 200 mm | 卷芯: 76 mm | 厚度: 0.1 mm\n结果: 估算长度约 268.8 米 (~882 英尺)，卷绕约 620 圈。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '基于阿基米德螺旋公式的几何数学估算。不计入卷绕张力压实松紧度、材料弹性延展伸长或厚度不均带来的物理误差。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有估算均在手机本地离线运行，无需网络通信与存储权限。屏幕底部展示标准AdMob横幅广告。';
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

  @override
  String get helpTooltip => '說明與指南';

  @override
  String get helpTitle => '捲材長度估算指南';

  @override
  String get helpProblemSolvedTitle => '解決的問題';

  @override
  String get helpProblemSolvedContent =>
      '離線透過外徑、軸心直徑與材料厚度，精準估算捲筒材料（膠帶、薄膜、紙張、織物等）的剩餘展開總長度，無須拆捲測量。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '使用相同的測量單位（如公釐 mm）輸入外徑（D）、軸心直徑（d）與材料厚度（t），接著點擊「估算長度」。';

  @override
  String get helpReadingResultsTitle => '查看結果';

  @override
  String get helpReadingResultsContent => '展示估算總展開長度（公尺與英呎）、總捲繞圈數（層數）及捲材斷面面積。';

  @override
  String get helpExampleTitle => '範例';

  @override
  String get helpExampleContent =>
      '外徑: 200 mm | 軸心: 76 mm | 厚度: 0.1 mm\n結果: 估算長度約 268.8 公尺 (~882 英呎)，捲繞約 620 圈。';

  @override
  String get helpLimitsTitle => '驗證與限制';

  @override
  String get helpLimitsContent =>
      '基於阿基米德螺旋公式的幾何數學估算。不考慮捲取張力壓實緊度、材料彈性延展拉伸或厚度不均造成的誤差。';

  @override
  String get helpDataAndPrivacyTitle => '本機資料與廣告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有估算均在手機本機離線執行，無須連網或儲存權限。螢幕底部顯示標準AdMob橫幅廣告。';
}
