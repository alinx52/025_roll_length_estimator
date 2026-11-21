// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '롤 길이 계산기';

  @override
  String get appDescription => '균일하고 단단하게 감긴 롤의 재료 길이를 추정합니다.';

  @override
  String get languageMenuTooltip => '언어 선택';

  @override
  String get privacyPolicy => '개인정보처리방침';

  @override
  String get appearanceMenuTooltip => '화면 스타일 선택';

  @override
  String get appearanceMaterial => '머티리얼';

  @override
  String get appearanceFlat => '플랫';

  @override
  String get appearanceSoft => '소프트';

  @override
  String get unitMillimetres => '밀리미터(mm)';

  @override
  String get unitInches => '인치(in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => '바깥지름';

  @override
  String get coreDiameter => '코어 지름';

  @override
  String get materialThickness => '재료 두께';

  @override
  String get estimateLength => '길이 추정';

  @override
  String get clearMeasurements => '측정값 지우기';

  @override
  String get estimatedLength => '추정 길이';

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
    return '선택 단위 기준: $value $unit';
  }

  @override
  String get cautionNote => '느슨한 감김, 압축, 틈, 두께 편차에 따라 실제 길이가 달라질 수 있습니다.';

  @override
  String get errorAllMeasurements => '세 가지 측정값을 모두 입력하세요';

  @override
  String get errorPositive => '0보다 큰 값을 사용하세요';

  @override
  String get errorOuterLarger => '바깥지름은 코어 지름보다 커야 합니다';

  @override
  String get errorValidNumbers => '유효한 숫자를 입력하세요';
}
