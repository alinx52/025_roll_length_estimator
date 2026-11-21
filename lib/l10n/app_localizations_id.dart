// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Penaksir panjang gulungan';

  @override
  String get appDescription =>
      'Taksir panjang bahan pada gulungan yang digulung rata dan rapat.';

  @override
  String get languageMenuTooltip => 'Pilih bahasa';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get appearanceMenuTooltip => 'Pilih tampilan';

  @override
  String get appearanceMaterial => 'Bertekstur';

  @override
  String get appearanceFlat => 'Datar';

  @override
  String get appearanceSoft => 'Lembut';

  @override
  String get unitMillimetres => 'Milimeter (mm)';

  @override
  String get unitInches => 'Inci (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Diameter luar';

  @override
  String get coreDiameter => 'Diameter inti';

  @override
  String get materialThickness => 'Ketebalan bahan';

  @override
  String get estimateLength => 'Taksir panjang';

  @override
  String get clearMeasurements => 'Hapus pengukuran';

  @override
  String get estimatedLength => 'Perkiraan panjang';

  @override
  String metresResult(String value) {
    return '$value m';
  }

  @override
  String feetResult(String value) {
    return '$value kaki';
  }

  @override
  String selectedUnitResult(String value, String unit) {
    return 'Dalam satuan terpilih: $value $unit';
  }

  @override
  String get cautionNote =>
      'Gulungan longgar, pemampatan, celah, dan perbedaan ketebalan dapat mengubah panjang sebenarnya.';

  @override
  String get errorAllMeasurements => 'Masukkan ketiga pengukuran';

  @override
  String get errorPositive => 'Gunakan nilai yang lebih besar dari nol';

  @override
  String get errorOuterLarger =>
      'Diameter luar harus lebih besar daripada diameter inti';

  @override
  String get errorValidNumbers => 'Masukkan angka yang valid';
}
