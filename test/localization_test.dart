import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every required ARB has the complete English message key set', () {
    const requiredLocales = [
      'en',
      'ko',
      'ja',
      'zh_Hans',
      'zh_Hant',
      'es',
      'fr',
      'de',
      'pt_BR',
      'it',
      'nl',
      'ru',
      'ar',
      'hi',
      'id',
      'vi',
    ];
    final template = _messages('lib/l10n/app_en.arb');

    for (final locale in requiredLocales) {
      final file = File('lib/l10n/app_$locale.arb');
      expect(file.existsSync(), isTrue, reason: 'Missing ARB for $locale');
      expect(
        _messages(file.path).keys.toSet(),
        template.keys.toSet(),
        reason: 'Incomplete message keys for $locale',
      );
    }
  });
}

Map<String, dynamic> _messages(String path) {
  final json =
      jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
  return Map.fromEntries(
    json.entries.where((entry) => !entry.key.startsWith('@')),
  );
}
