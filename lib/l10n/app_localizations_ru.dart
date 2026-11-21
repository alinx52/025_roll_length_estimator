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
}
