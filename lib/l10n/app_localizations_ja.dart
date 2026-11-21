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
}
