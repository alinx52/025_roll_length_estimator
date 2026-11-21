import 'package:roll_length_estimator/locale_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('parses persisted language, script, and region locale tags', () {
    expect(AppLocalePreferences.parseLocaleTag('ko')?.toLanguageTag(), 'ko');
    expect(
      AppLocalePreferences.parseLocaleTag('zh-Hans')?.toLanguageTag(),
      'zh-Hans',
    );
    expect(
      AppLocalePreferences.parseLocaleTag('pt-BR')?.toLanguageTag(),
      'pt-BR',
    );
  });

  test('returns null for a missing saved locale', () {
    expect(AppLocalePreferences.parseLocaleTag(null), isNull);
    expect(AppLocalePreferences.parseLocaleTag(''), isNull);
  });

  test('saves and restores a user-selected locale', () async {
    SharedPreferences.setMockInitialValues({});

    await AppLocalePreferences.save(
      const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    );

    expect((await AppLocalePreferences.load())?.toLanguageTag(), 'zh-Hant');
  });
}
