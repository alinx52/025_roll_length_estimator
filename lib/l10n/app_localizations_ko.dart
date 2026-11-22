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

  @override
  String get helpTooltip => '도움말 및 안내';

  @override
  String get helpTitle => '롤 길이 추정기 안내';

  @override
  String get helpProblemSolvedTitle => '해결하는 문제';

  @override
  String get helpProblemSolvedContent =>
      '테이프, 필름, 종이, 원단 등 롤 형태로 감겨 있는 자재를 풀지 않고도 바깥지름, 코어 지름, 재료 두께를 통해 남은 총 길이를 오프라인으로 신속하게 추정합니다.';

  @override
  String get helpHowToUseTitle => '사용 방법';

  @override
  String get helpHowToUseContent =>
      '롤의 바깥지름(D), 내부 코어 지름(d), 재료 두께(t)를 동일한 측정 단위(예: mm)로 입력한 뒤 길이 추정 버튼을 누릅니다.';

  @override
  String get helpReadingResultsTitle => '결과 확인';

  @override
  String get helpReadingResultsContent =>
      '추정된 총 잔여 길이(미터 및 피트), 롤 감김 횟수(총 레이어 수), 권취 단면적을 한눈에 확인할 수 있도록 표시합니다.';

  @override
  String get helpExampleTitle => '대표 예시';

  @override
  String get helpExampleContent =>
      '바깥지름: 200 mm | 코어: 76 mm | 두께: 0.1 mm\n결과: 추정 길이 약 268.8 m (~882 ft), 약 620회 감김.';

  @override
  String get helpLimitsTitle => '검증 및 제한사항';

  @override
  String get helpLimitsContent =>
      '아르키메데스 나선 기하학 공식에 기반한 수학적 추정치입니다. 권취 장력(당김), 자재 신축성, 불균일한 두께에 따른 오차를 보증하지 않습니다.';

  @override
  String get helpDataAndPrivacyTitle => '로컬 데이터 및 광고';

  @override
  String get helpDataAndPrivacyContent =>
      '모든 연산은 기기 내부에서 오프라인으로 실행되며 외부 통신이 없습니다. 화면 하단에 Google AdMob 표준 배너 광고가 표시됩니다.';
}
