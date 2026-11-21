// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Ước tính chiều dài cuộn';

  @override
  String get appDescription =>
      'Ước tính chiều dài vật liệu trên cuộn được quấn đều và chặt.';

  @override
  String get languageMenuTooltip => 'Chọn ngôn ngữ';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get appearanceMenuTooltip => 'Chọn giao diện';

  @override
  String get appearanceMaterial => 'Nổi';

  @override
  String get appearanceFlat => 'Phẳng';

  @override
  String get appearanceSoft => 'Mềm';

  @override
  String get unitMillimetres => 'Milimét (mm)';

  @override
  String get unitInches => 'Inch (in)';

  @override
  String get unitMillimetresShort => 'mm';

  @override
  String get unitInchesShort => 'in';

  @override
  String get outerDiameter => 'Đường kính ngoài';

  @override
  String get coreDiameter => 'Đường kính lõi';

  @override
  String get materialThickness => 'Độ dày vật liệu';

  @override
  String get estimateLength => 'Ước tính chiều dài';

  @override
  String get clearMeasurements => 'Xóa số đo';

  @override
  String get estimatedLength => 'Chiều dài ước tính';

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
    return 'Theo đơn vị đã chọn: $value $unit';
  }

  @override
  String get cautionNote =>
      'Độ lỏng khi quấn, độ nén, khe hở và chênh lệch độ dày có thể làm thay đổi chiều dài thực tế.';

  @override
  String get errorAllMeasurements => 'Nhập đủ ba số đo';

  @override
  String get errorPositive => 'Dùng giá trị lớn hơn không';

  @override
  String get errorOuterLarger => 'Đường kính ngoài phải lớn hơn đường kính lõi';

  @override
  String get errorValidNumbers => 'Nhập số hợp lệ';
}
