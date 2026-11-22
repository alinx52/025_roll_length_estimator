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

  @override
  String get helpTooltip => 'Bantuan & Panduan';

  @override
  String get helpTitle => 'Panduan Estimator Panjang Gulungan';

  @override
  String get helpProblemSolvedTitle => 'Masalah yang Diatasi';

  @override
  String get helpProblemSolvedContent =>
      'Memperkirakan sisa panjang bahan gulungan (pita, film, kertas, kain) dari diameter luar, diameter inti, dan ketebalan material.';

  @override
  String get helpHowToUseTitle => 'Cara Penggunaan';

  @override
  String get helpHowToUseContent =>
      'Masukkan Diameter Luar (D), Diameter Inti (d), dan Ketebalan Bahan (t) dengan satuan yang sama (mis. mm), lalu ketuk Estimasi panjang.';

  @override
  String get helpReadingResultsTitle => 'Membaca Hasil';

  @override
  String get helpReadingResultsContent =>
      'Menampilkan estimasi panjang total (meter dan kaki), jumlah lapisan putaran, dan luas penampang gulungan.';

  @override
  String get helpExampleTitle => 'Contoh';

  @override
  String get helpExampleContent =>
      'Luar: 200 mm | Inti: 76 mm | Tebal: 0.1 mm\nHasil: ~268,8 meter (~882 kaki) dalam ~620 putaran.';

  @override
  String get helpLimitsTitle => 'Validasi & Batasan';

  @override
  String get helpLimitsContent =>
      'Aproksimasi geometris spiral Archimedes. Tidak memperhitungkan tegangan gulungan, elastisitas bahan, atau ketebalan yang tidak rata.';

  @override
  String get helpDataAndPrivacyTitle => 'Data Lokal & Iklan';

  @override
  String get helpDataAndPrivacyContent =>
      'Semua estimasi berjalan di ponsel tanpa panggilan jaringan atau izin penyimpanan. Spanduk AdMob ditampilkan di bawah.';
}
