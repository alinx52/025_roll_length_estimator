import 'dart:async';
import 'help_page.dart';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_banner.dart';
import 'app_config.dart';
import 'app_language_menu.dart';
import 'design_system.dart';
import 'l10n/app_localizations.dart';

enum MeasurementUnit { millimetres, inches }

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;
  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _outerController = TextEditingController();
  final _coreController = TextEditingController();
  final _thicknessController = TextEditingController();
  MeasurementUnit _unit = MeasurementUnit.millimetres;
  _Estimate? _estimate;
  _ValidationError? _error;

  @override
  void dispose() {
    _outerController.dispose();
    _coreController.dispose();
    _thicknessController.dispose();
    super.dispose();
  }

  void _calculate() {
    final values = [
      _outerController.text.trim(),
      _coreController.text.trim(),
      _thicknessController.text.trim(),
    ];
    if (values.any((value) => value.isEmpty)) {
      setState(() => _error = _ValidationError.empty);
      return;
    }

    final parsed = values.map(double.tryParse).toList(growable: false);
    if (parsed.any((value) => value == null || !value.isFinite)) {
      setState(() => _error = _ValidationError.invalid);
      return;
    }

    final outer = parsed[0]!;
    final core = parsed[1]!;
    final thickness = parsed[2]!;
    if (outer <= 0 || core <= 0 || thickness <= 0) {
      setState(() => _error = _ValidationError.nonPositive);
      return;
    }
    if (outer <= core) {
      setState(() => _error = _ValidationError.outerNotLarger);
      return;
    }

    final selectedLength =
        math.pi * (outer * outer - core * core) / (4 * thickness);
    final metres = _unit == MeasurementUnit.millimetres
        ? selectedLength / 1000
        : selectedLength * 0.0254;
    setState(() {
      _error = null;
      _estimate = _Estimate(selectedLength: selectedLength, metres: metres);
    });
  }

  void _clear() {
    _outerController.clear();
    _coreController.clear();
    _thicknessController.clear();
    setState(() {
      _error = null;
      _estimate = null;
    });
  }

  String? _errorText(AppLocalizations l10n) => switch (_error) {
    _ValidationError.empty => l10n.errorAllMeasurements,
    _ValidationError.nonPositive => l10n.errorPositive,
    _ValidationError.outerNotLarger => l10n.errorOuterLarger,
    _ValidationError.invalid => l10n.errorValidNumbers,
    null => null,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final unitLabel = _unit == MeasurementUnit.millimetres
        ? l10n.unitMillimetresShort
        : l10n.unitInchesShort;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.appTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          AppLanguageMenu(
            locale: widget.locale,
            onSelected: widget.onLocaleChanged,
            tooltip: l10n.languageMenuTooltip,
          ),
        ],
      ),
      bottomNavigationBar: const AdBanner(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          l10n.appDescription,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: colorScheme.onSurfaceVariant),
                        ),
                        const SizedBox(height: 12),
                        SegmentedButton<MeasurementUnit>(
                          key: const ValueKey('unit-selector'),
                          segments: [
                            ButtonSegment(
                              value: MeasurementUnit.millimetres,
                              label: Text(l10n.unitMillimetres),
                            ),
                            ButtonSegment(
                              value: MeasurementUnit.inches,
                              label: Text(l10n.unitInches),
                            ),
                          ],
                          selected: {_unit},
                          onSelectionChanged: (selection) {
                            setState(() {
                              _unit = selection.single;
                              _error = null;
                              _estimate = null;
                            });
                          },
                          showSelectedIcon: false,
                        ),
                        const SizedBox(height: 12),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                _MeasurementField(
                                  fieldKey: const ValueKey('outer-diameter'),
                                  controller: _outerController,
                                  label: l10n.outerDiameter,
                                  unit: unitLabel,
                                  icon: Icons.radio_button_unchecked,
                                ),
                                const SizedBox(height: 8),
                                _MeasurementField(
                                  fieldKey: const ValueKey('core-diameter'),
                                  controller: _coreController,
                                  label: l10n.coreDiameter,
                                  unit: unitLabel,
                                  icon: Icons.adjust,
                                ),
                                const SizedBox(height: 8),
                                _MeasurementField(
                                  fieldKey: const ValueKey(
                                    'material-thickness',
                                  ),
                                  controller: _thicknessController,
                                  label: l10n.materialThickness,
                                  unit: unitLabel,
                                  icon: Icons.straighten,
                                  onSubmitted: (_) => _calculate(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (_errorText(l10n) case final error?) ...[
                          const SizedBox(height: 8),
                          Semantics(
                            liveRegion: true,
                            child: Text(
                              error,
                              key: const ValueKey('validation-error'),
                              style: TextStyle(color: colorScheme.error),
                            ),
                          ),
                        ],
                        const SizedBox(height: 12),
                        FilledButton.icon(
                          key: const ValueKey('estimate-button'),
                          onPressed: _calculate,
                          icon: const Icon(Icons.calculate_outlined),
                          label: Text(l10n.estimateLength),
                        ),
                        if (_estimate case final estimate?) ...[
                          const SizedBox(height: 16),
                          _ResultPanel(
                            estimate: estimate,
                            selectedUnitLabel: unitLabel,
                            l10n: l10n,
                          ),
                        ],
                        const SizedBox(height: 4),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: TextButton.icon(
                            key: const ValueKey('clear-button'),
                            onPressed: _clear,
                            icon: const Icon(Icons.clear_all),
                            label: Text(l10n.clearMeasurements),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            _Footer(
              designStyle: widget.designStyle,
              onDesignStyleChanged: widget.onDesignStyleChanged,
              l10n: l10n,
            ),
          ],
        ),
      ),
    );
  }
}

class _MeasurementField extends StatelessWidget {
  const _MeasurementField({
    required this.fieldKey,
    required this.controller,
    required this.label,
    required this.unit,
    required this.icon,
    this.onSubmitted,
  });

  final Key fieldKey;
  final TextEditingController controller;
  final String label;
  final String unit;
  final IconData icon;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: fieldKey,
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textInputAction: onSubmitted == null
          ? TextInputAction.next
          : TextInputAction.done,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, size: 20),
        suffixText: unit,
      ),
      onSubmitted: onSubmitted,
    );
  }
}

class _ResultPanel extends StatelessWidget {
  const _ResultPanel({
    required this.estimate,
    required this.selectedUnitLabel,
    required this.l10n,
  });

  final _Estimate estimate;
  final String selectedUnitLabel;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final feet = estimate.metres * 3.280839895013123;
    return Semantics(
      liveRegion: true,
      child: Container(
        key: const ValueKey('estimate-result'),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: colorScheme.primary.withValues(alpha: 0.35),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.estimatedLength,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 16,
              runSpacing: 4,
              children: [
                Text(
                  l10n.metresResult(estimate.metres.toStringAsFixed(2)),
                  style: Theme.of(context).textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  l10n.feetResult(feet.toStringAsFixed(2)),
                  style: Theme.of(context).textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              l10n.selectedUnitResult(
                estimate.selectedLength.toStringAsFixed(2),
                selectedUnitLabel,
              ),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.cautionNote,
              style: Theme.of(context).textTheme.bodySmall
                  ?.copyWith(color: colorScheme.onPrimaryContainer),
            ),
          ],
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    required this.designStyle,
    required this.onDesignStyleChanged,
    required this.l10n,
  });

  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppAppearanceMenu(
              selectedStyle: designStyle,
              onSelected: onDesignStyleChanged,
              tooltip: l10n.appearanceMenuTooltip,
              materialLabel: l10n.appearanceMaterial,
              flatLabel: l10n.appearanceFlat,
              softLabel: l10n.appearanceSoft,
            ),
            const SizedBox(width: 4),
            IconButton(
                    icon: const Icon(Icons.help_outline),
                    tooltip: AppLocalizations.of(context).helpTooltip,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (context) => const HelpPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
            TextButton.icon(
              key: const ValueKey('privacy-policy'),
              onPressed: () {
                unawaited(
                  launchUrl(
                    Uri.parse(privacyPolicyUrl),
                    mode: LaunchMode.externalApplication,
                  ),
                );
              },
              icon: const Icon(Icons.privacy_tip_outlined, size: 18),
              label: Text(l10n.privacyPolicy),
            ),
          ],
        ),
      ),
    );
  }
}

enum _ValidationError { empty, nonPositive, outerNotLarger, invalid }

class _Estimate {
  const _Estimate({required this.selectedLength, required this.metres});

  final double selectedLength;
  final double metres;
}
