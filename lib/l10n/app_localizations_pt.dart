// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Estimador de comprimento de rolo';

  @override
  String get appDescription =>
      'Estime o comprimento de um material enrolado de modo uniforme e firme.';

  @override
  String get languageMenuTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceMenuTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Tátil';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get unitMillimetres => 'Milímetros (mm)';

  @override
  String get unitInches => 'Polegadas (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Diâmetro externo';

  @override
  String get coreDiameter => 'Diâmetro do núcleo';

  @override
  String get materialThickness => 'Espessura do material';

  @override
  String get estimateLength => 'Estimar comprimento';

  @override
  String get clearMeasurements => 'Limpar medidas';

  @override
  String get estimatedLength => 'Comprimento estimado';

  @override
  String metresResult(String value) {
    return '$value m';
  }

  @override
  String feetResult(String value) {
    return '$value pés';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return 'Na unidade selecionada: $value $unit';
  }

  @override
  String get cautionNote =>
      'Enrolamento frouxo, compressão, espaços e variações de espessura podem alterar o comprimento real.';

  @override
  String get errorAllMeasurements => 'Insira as três medidas';

  @override
  String get errorPositive => 'Use valores maiores que zero';

  @override
  String get errorOuterLarger =>
      'O diâmetro externo deve ser maior que o diâmetro do núcleo';

  @override
  String get errorValidNumbers => 'Insira números válidos';

  @override
  String get helpTooltip => 'Ajuda e guia';

  @override
  String get helpTitle => 'Guia do Estimador de Comprimento de Bobinas';

  @override
  String get helpProblemSolvedTitle => 'Problema resolvido';

  @override
  String get helpProblemSolvedContent =>
      'Estima o comprimento restante de bobinas (fita, filme, papel, tecido) usando o diâmetro externo, diâmetro do núcleo e espessura.';

  @override
  String get helpHowToUseTitle => 'Como usar';

  @override
  String get helpHowToUseContent =>
      'Insira o diâmetro externo (D), diâmetro do núcleo (d) e espessura (t) na mesma unidade (ex.: mm) e toque em Estimar comprimento.';

  @override
  String get helpReadingResultsTitle => 'Leitura dos resultados';

  @override
  String get helpReadingResultsContent =>
      'Mostra o comprimento total estimado (metros e pés), o número de voltas (camadas) e a área de seção transversal.';

  @override
  String get helpExampleTitle => 'Exemplo';

  @override
  String get helpExampleContent =>
      'Externo: 200 mm | Núcleo: 76 mm | Espessura: 0.1 mm\nResultado: ~268,8 metros (~882 pés) em ~620 voltas.';

  @override
  String get helpLimitsTitle => 'Validação e limites';

  @override
  String get helpLimitsContent =>
      'Aproximação geométrica de espiral de Arquimedes. Não considera tensão de enrolamento, elasticidade ou espessura irregular.';

  @override
  String get helpDataAndPrivacyTitle => 'Dados locais e anúncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todas as estimativas são feitas localmente no aparelho sem chamadas de rede. Um banner do AdMob é exibido abaixo.';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Estimador de comprimento de rolo';

  @override
  String get appDescription =>
      'Estime o comprimento de um material enrolado de modo uniforme e firme.';

  @override
  String get languageMenuTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceMenuTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Tátil';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get unitMillimetres => 'Milímetros (mm)';

  @override
  String get unitInches => 'Polegadas (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Diâmetro externo';

  @override
  String get coreDiameter => 'Diâmetro do núcleo';

  @override
  String get materialThickness => 'Espessura do material';

  @override
  String get estimateLength => 'Estimar comprimento';

  @override
  String get clearMeasurements => 'Limpar medidas';

  @override
  String get estimatedLength => 'Comprimento estimado';

  @override
  String metresResult(String value) {
    return '$value m';
  }

  @override
  String feetResult(String value) {
    return '$value pés';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return 'Na unidade selecionada: $value $unit';
  }

  @override
  String get cautionNote =>
      'Enrolamento frouxo, compressão, espaços e variações de espessura podem alterar o comprimento real.';

  @override
  String get errorAllMeasurements => 'Insira as três medidas';

  @override
  String get errorPositive => 'Use valores maiores que zero';

  @override
  String get errorOuterLarger =>
      'O diâmetro externo deve ser maior que o diâmetro do núcleo';

  @override
  String get errorValidNumbers => 'Insira números válidos';

  @override
  String get helpTooltip => 'Ajuda e guia';

  @override
  String get helpTitle => 'Guia do Estimador de Comprimento de Bobinas';

  @override
  String get helpProblemSolvedTitle => 'Problema resolvido';

  @override
  String get helpProblemSolvedContent =>
      'Estima o comprimento restante de bobinas (fita, filme, papel, tecido) usando o diâmetro externo, diâmetro do núcleo e espessura.';

  @override
  String get helpHowToUseTitle => 'Como usar';

  @override
  String get helpHowToUseContent =>
      'Insira o diâmetro externo (D), diâmetro do núcleo (d) e espessura (t) na mesma unidade (ex.: mm) e toque em Estimar comprimento.';

  @override
  String get helpReadingResultsTitle => 'Leitura dos resultados';

  @override
  String get helpReadingResultsContent =>
      'Mostra o comprimento total estimado (metros e pés), o número de voltas (camadas) e a área de seção transversal.';

  @override
  String get helpExampleTitle => 'Exemplo';

  @override
  String get helpExampleContent =>
      'Externo: 200 mm | Núcleo: 76 mm | Espessura: 0.1 mm\nResultado: ~268,8 metros (~882 pés) em ~620 voltas.';

  @override
  String get helpLimitsTitle => 'Validação e limites';

  @override
  String get helpLimitsContent =>
      'Aproximação geométrica de espiral de Arquimedes. Não considera tensão de enrolamento, elasticidade ou espessura irregular.';

  @override
  String get helpDataAndPrivacyTitle => 'Dados locais e anúncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todas as estimativas são feitas localmente no aparelho sem chamadas de rede. Um banner do AdMob é exibido abaixo.';
}
