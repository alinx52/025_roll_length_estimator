// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Оценка длины рулона';

  @override
  String get appDescription =>
      'Оцените длину материала в равномерно и плотно намотанном рулоне.';

  @override
  String get languageMenuTooltip => 'Выбрать язык';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get appearanceMenuTooltip => 'Выбрать оформление';

  @override
  String get appearanceMaterial => 'Материальный';

  @override
  String get appearanceFlat => 'Плоский';

  @override
  String get appearanceSoft => 'Мягкий';

  @override
  String get unitMillimetres => 'Миллиметры (мм)';

  @override
  String get unitInches => 'Дюймы (in)';

  @override
  String get unitMillimetresShort => 'мм';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Внешний диаметр';

  @override
  String get coreDiameter => 'Диаметр втулки';

  @override
  String get materialThickness => 'Толщина материала';

  @override
  String get estimateLength => 'Оценить длину';

  @override
  String get clearMeasurements => 'Очистить измерения';

  @override
  String get estimatedLength => 'Расчётная длина';

  @override
  String metresResult(String value) {
    return '$value м';
  }

  @override
  String feetResult(String value) {
    return '$value фут';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return 'В выбранных единицах: $value $unit';
  }

  @override
  String get cautionNote =>
      'Неплотная намотка, сжатие, зазоры и различия толщины могут изменить фактическую длину.';

  @override
  String get errorAllMeasurements => 'Введите все три измерения';

  @override
  String get errorPositive => 'Используйте значения больше нуля';

  @override
  String get errorOuterLarger =>
      'Внешний диаметр должен быть больше диаметра втулки';

  @override
  String get errorValidNumbers => 'Введите допустимые числа';

  @override
  String get helpTooltip => 'Справка и руководство';

  @override
  String get helpTitle => 'Руководство по оценке длины рулона';

  @override
  String get helpProblemSolvedTitle => 'Решаемая задача';

  @override
  String get helpProblemSolvedContent =>
      'Оценивает остаточную длину рулонных материалов (лента, пленка, бумага, ткань) по внешнему диаметру, диаметру втулки и толщине.';

  @override
  String get helpHowToUseTitle => 'Как использовать';

  @override
  String get helpHowToUseContent =>
      'Введите внешний диаметр (D), диаметр втулки (d) и толщину материала (t) в одинаковых единицах (напр. мм) и нажмите «Оценить».';

  @override
  String get helpReadingResultsTitle => 'Чтение результатов';

  @override
  String get helpReadingResultsContent =>
      'Отображает расчетную длину (в метрах и футах), число витков (слоев) и площадь поперечного сечения намотки.';

  @override
  String get helpExampleTitle => 'Пример';

  @override
  String get helpExampleContent =>
      'Внешний: 200 мм | Втулка: 76 мм | Толщина: 0.1 мм\nРезультат: ~268.8 метров (~882 футов) в ~620 витках.';

  @override
  String get helpLimitsTitle => 'Проверка и ограничения';

  @override
  String get helpLimitsContent =>
      'Геометрическое приближение по архимедовой спирали. Не учитывает натяжение намотки, растяжение материала и неравномерность толщины.';

  @override
  String get helpDataAndPrivacyTitle => 'Локальные данные и реклама';

  @override
  String get helpDataAndPrivacyContent =>
      'Все расчеты выполняются локально на телефоне без доступа к сети. Внизу отображается стандартный баннер AdMob.';
}
