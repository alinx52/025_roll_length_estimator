// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'ロール長さ見積もり';

  @override
  String get appDescription => '均一にしっかり巻かれたロールの材料の長さを見積もります。';

  @override
  String get languageMenuTooltip => '言語を選択';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get appearanceMenuTooltip => '表示スタイルを選択';

  @override
  String get appearanceMaterial => 'マテリアル';

  @override
  String get appearanceFlat => 'フラット';

  @override
  String get appearanceSoft => 'ソフト';

  @override
  String get unitMillimetres => 'ミリメートル (mm)';

  @override
  String get unitInches => 'インチ (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => '外径';

  @override
  String get coreDiameter => '芯の直径';

  @override
  String get materialThickness => '材料の厚さ';

  @override
  String get estimateLength => '長さを見積もる';

  @override
  String get clearMeasurements => '測定値を消去';

  @override
  String get estimatedLength => '推定長さ';

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
    return '選択単位での長さ: $value $unit';
  }

  @override
  String get cautionNote => '巻きの緩み、圧縮、隙間、厚さのばらつきにより実際の長さは変わることがあります。';

  @override
  String get errorAllMeasurements => '3つの測定値をすべて入力してください';

  @override
  String get errorPositive => '0より大きい値を使用してください';

  @override
  String get errorOuterLarger => '外径は芯の直径より大きくしてください';

  @override
  String get errorValidNumbers => '有効な数値を入力してください';

  @override
  String get helpTooltip => 'ヘルプと使い方';

  @override
  String get helpTitle => 'ロール残量長さ計算ガイド';

  @override
  String get helpProblemSolvedTitle => '解決する課題';

  @override
  String get helpProblemSolvedContent =>
      'テープ、フィルム、紙、生地などロール状に巻かれた材料を巻き戻すことなく、外径、芯（コア）径、厚みから残りの全長を推定します。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      'ロールの外径（D）、芯の直径（d）、素材の厚み（t）を同一の単位（mmなど）で入力し、「長さを推定」をタップします。';

  @override
  String get helpReadingResultsTitle => '結果の見方';

  @override
  String get helpReadingResultsContent =>
      '推定総長さ（メートルおよびフィート）、巻き数（積層数）、ロール断面積が表示されます。';

  @override
  String get helpExampleTitle => '具体例';

  @override
  String get helpExampleContent =>
      '外径: 200 mm | 芯径: 76 mm | 厚み: 0.1 mm\n結果: 推定長さ 約268.8 m (~882 ft)、巻き数 約620層。';

  @override
  String get helpLimitsTitle => '検証と制限事項';

  @override
  String get helpLimitsContent =>
      'アルキメデスの螺旋公式に基づく数学的近似です。巻き取り時の張力による潰れ、伸縮性、厚みのバラツキを保証するものではありません。';

  @override
  String get helpDataAndPrivacyTitle => 'ローカルデータと広告';

  @override
  String get helpDataAndPrivacyContent =>
      'すべての計算は外部通信なしで端末内でのみ行われます。画面下部に標準AdMobバナーが表示されます。';
}
