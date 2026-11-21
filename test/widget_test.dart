import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:roll_length_estimator/app.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
  }

  Future<void> enterMeasurements(
    WidgetTester tester, {
    required String outer,
    required String core,
    required String thickness,
  }) async {
    await tester.enterText(find.byKey(const ValueKey('outer-diameter')), outer);
    await tester.enterText(find.byKey(const ValueKey('core-diameter')), core);
    await tester.enterText(
      find.byKey(const ValueKey('material-thickness')),
      thickness,
    );
  }

  Future<void> estimate(WidgetTester tester) async {
    await tester.tap(find.byKey(const ValueKey('estimate-button')));
    await tester.pump();
  }

  Future<void> chooseLocale(WidgetTester tester, String tag) async {
    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    final item = find.byKey(ValueKey('locale-$tag'));
    await tester.ensureVisible(item);
    await tester.tap(item);
    await tester.pumpAndSettle();
  }

  testWidgets('first run is English and shows the complete primary form', (
    tester,
  ) async {
    await pumpApp(tester);

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('en'),
    );
    expect(find.text('Roll Length Estimator'), findsOneWidget);
    expect(find.text('Outer diameter'), findsOneWidget);
    expect(find.text('Core diameter'), findsOneWidget);
    expect(find.text('Material thickness'), findsOneWidget);
    expect(find.text('Estimate length'), findsOneWidget);
    expect(find.byKey(const ValueKey('privacy-policy')), findsOneWidget);
    expect(find.byKey(const ValueKey('appearance-menu')), findsOneWidget);
  });

  testWidgets('metric sample produces the exact specified rounded result', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterMeasurements(
      tester,
      outer: '100',
      core: '40',
      thickness: '0.10',
    );
    await estimate(tester);

    expect(find.text('Estimated length'), findsOneWidget);
    expect(find.text('65.97 m'), findsOneWidget);
    expect(find.text('216.45 ft'), findsOneWidget);
    expect(find.text('In selected unit: 65973.45 mm'), findsOneWidget);
  });

  testWidgets('equivalent inch measurements produce the same conversion', (
    tester,
  ) async {
    await pumpApp(tester);
    await tester.tap(find.text('Inches (in)'));
    await tester.pump();
    await enterMeasurements(
      tester,
      outer: '3.937007874015748',
      core: '1.574803149606299',
      thickness: '0.003937007874016',
    );
    await estimate(tester);

    expect(find.text('65.97 m'), findsOneWidget);
    expect(find.text('216.45 ft'), findsOneWidget);
  });

  testWidgets('changing units updates suffixes without changing inputs', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterMeasurements(
      tester,
      outer: '100',
      core: '40',
      thickness: '0.10',
    );
    await tester.tap(find.text('Inches (in)'));
    await tester.pump();

    expect(find.text('100'), findsOneWidget);
    expect(find.text('40'), findsOneWidget);
    expect(find.text('0.10'), findsOneWidget);
    for (final field in tester.widgetList<TextField>(find.byType(TextField))) {
      expect(field.decoration?.suffixText, 'in');
    }
  });

  testWidgets('all invalid inputs show the correct error and retain result', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterMeasurements(
      tester,
      outer: '100',
      core: '40',
      thickness: '0.10',
    );
    await estimate(tester);

    Future<void> verifyInvalid({
      required String outer,
      required String core,
      required String thickness,
      required String error,
    }) async {
      await enterMeasurements(
        tester,
        outer: outer,
        core: core,
        thickness: thickness,
      );
      await estimate(tester);
      expect(find.text(error), findsOneWidget);
      expect(find.text('65.97 m'), findsOneWidget);
    }

    await verifyInvalid(
      outer: '',
      core: '40',
      thickness: '0.10',
      error: 'Enter all three measurements',
    );
    await verifyInvalid(
      outer: '0',
      core: '40',
      thickness: '0.10',
      error: 'Use values greater than zero',
    );
    await verifyInvalid(
      outer: '-100',
      core: '40',
      thickness: '0.10',
      error: 'Use values greater than zero',
    );
    await verifyInvalid(
      outer: 'NaN',
      core: '40',
      thickness: '0.10',
      error: 'Enter valid numbers',
    );
    await verifyInvalid(
      outer: 'Infinity',
      core: '40',
      thickness: '0.10',
      error: 'Enter valid numbers',
    );
    await verifyInvalid(
      outer: 'not-a-number',
      core: '40',
      thickness: '0.10',
      error: 'Enter valid numbers',
    );
    await verifyInvalid(
      outer: '40',
      core: '40',
      thickness: '0.10',
      error: 'Outer diameter must be larger than core diameter',
    );
  });

  testWidgets('Korean can be selected immediately', (tester) async {
    await pumpApp(tester);
    await chooseLocale(tester, 'ko');

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ko'),
    );
    expect(find.text('롤 길이 계산기'), findsOneWidget);
    expect(find.text('바깥지름'), findsOneWidget);
  });

  testWidgets('a valid saved locale is restored on launch', (tester) async {
    SharedPreferences.setMockInitialValues({'app.locale': 'ko'});
    await pumpApp(tester);

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ko'),
    );
    expect(find.text('롤 길이 계산기'), findsOneWidget);
  });

  testWidgets('Arabic switching is RTL and preserves inputs and result', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(430, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await pumpApp(tester);
    await enterMeasurements(
      tester,
      outer: '100',
      core: '40',
      thickness: '0.10',
    );
    await estimate(tester);
    await chooseLocale(tester, 'ar');

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ar'),
    );
    expect(
      Directionality.of(tester.element(find.byType(Scaffold))),
      TextDirection.rtl,
    );
    expect(find.text('القطر الخارجي'), findsOneWidget);
    expect(find.text('100'), findsOneWidget);
    expect(find.text('65.97 م'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
