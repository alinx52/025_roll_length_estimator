import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// The app title.
  ///
  /// In en, this message translates to:
  /// **'Roll Length Estimator'**
  String get appTitle;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'Estimate the length on a uniformly and tightly wound roll.'**
  String get appDescription;

  /// No description provided for @languageMenuTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get languageMenuTooltip;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @appearanceMenuTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose appearance'**
  String get appearanceMenuTooltip;

  /// No description provided for @appearanceMaterial.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get appearanceMaterial;

  /// No description provided for @appearanceFlat.
  ///
  /// In en, this message translates to:
  /// **'Flat'**
  String get appearanceFlat;

  /// No description provided for @appearanceSoft.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get appearanceSoft;

  /// No description provided for @unitMillimetres.
  ///
  /// In en, this message translates to:
  /// **'Millimetres (mm)'**
  String get unitMillimetres;

  /// No description provided for @unitInches.
  ///
  /// In en, this message translates to:
  /// **'Inches (in)'**
  String get unitInches;

  /// No description provided for @unitMillimetresShort.
  ///
  /// In en, this message translates to:
  /// **'mm'**
  String get unitMillimetresShort;

  /// No description provided for @unitInchesShort.
  ///
  /// In en, this message translates to:
  /// **'in'**
  String get unitInchesShort;

  /// No description provided for @outerDiameter.
  ///
  /// In en, this message translates to:
  /// **'Outer diameter'**
  String get outerDiameter;

  /// No description provided for @coreDiameter.
  ///
  /// In en, this message translates to:
  /// **'Core diameter'**
  String get coreDiameter;

  /// No description provided for @materialThickness.
  ///
  /// In en, this message translates to:
  /// **'Material thickness'**
  String get materialThickness;

  /// No description provided for @estimateLength.
  ///
  /// In en, this message translates to:
  /// **'Estimate length'**
  String get estimateLength;

  /// No description provided for @clearMeasurements.
  ///
  /// In en, this message translates to:
  /// **'Clear measurements'**
  String get clearMeasurements;

  /// No description provided for @estimatedLength.
  ///
  /// In en, this message translates to:
  /// **'Estimated length'**
  String get estimatedLength;

  /// No description provided for @metresResult.
  ///
  /// In en, this message translates to:
  /// **'{value} m'**
  String metresResult(String value);

  /// No description provided for @feetResult.
  ///
  /// In en, this message translates to:
  /// **'{value} ft'**
  String feetResult(String value);

  /// No description provided for @selectedUnitResult.
  ///
  /// In en, this message translates to:
  /// **'In selected unit: {value} {unit}'**
  String selectedUnitResult(String value, String unit);

  /// No description provided for @cautionNote.
  ///
  /// In en, this message translates to:
  /// **'Loose winding, compression, gaps, and thickness variation can change the real length.'**
  String get cautionNote;

  /// No description provided for @errorAllMeasurements.
  ///
  /// In en, this message translates to:
  /// **'Enter all three measurements'**
  String get errorAllMeasurements;

  /// No description provided for @errorPositive.
  ///
  /// In en, this message translates to:
  /// **'Use values greater than zero'**
  String get errorPositive;

  /// No description provided for @errorOuterLarger.
  ///
  /// In en, this message translates to:
  /// **'Outer diameter must be larger than core diameter'**
  String get errorOuterLarger;

  /// No description provided for @errorValidNumbers.
  ///
  /// In en, this message translates to:
  /// **'Enter valid numbers'**
  String get errorValidNumbers;

  /// No description provided for @helpTooltip.
  ///
  /// In en, this message translates to:
  /// **'Help & Guide'**
  String get helpTooltip;

  /// No description provided for @helpTitle.
  ///
  /// In en, this message translates to:
  /// **'Roll Length Estimator Guide'**
  String get helpTitle;

  /// No description provided for @helpProblemSolvedTitle.
  ///
  /// In en, this message translates to:
  /// **'Problem Solved'**
  String get helpProblemSolvedTitle;

  /// No description provided for @helpProblemSolvedContent.
  ///
  /// In en, this message translates to:
  /// **'Estimates the remaining linear length of wound roll materials (tape, film, paper, foil, fabric) from outer diameter, core diameter, and thickness offline.'**
  String get helpProblemSolvedContent;

  /// No description provided for @helpHowToUseTitle.
  ///
  /// In en, this message translates to:
  /// **'How to Use'**
  String get helpHowToUseTitle;

  /// No description provided for @helpHowToUseContent.
  ///
  /// In en, this message translates to:
  /// **'Enter the Outer Diameter (D), Core Diameter (d), and Material Thickness (t) using matching measurement units (e.g. mm), then tap Estimate length.'**
  String get helpHowToUseContent;

  /// No description provided for @helpReadingResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reading Results'**
  String get helpReadingResultsTitle;

  /// No description provided for @helpReadingResultsContent.
  ///
  /// In en, this message translates to:
  /// **'Displays estimated total length (meters and feet), total wound turns (layers), and cross-sectional wound material area.'**
  String get helpReadingResultsContent;

  /// No description provided for @helpExampleTitle.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get helpExampleTitle;

  /// No description provided for @helpExampleContent.
  ///
  /// In en, this message translates to:
  /// **'Outer: 200 mm | Core: 76 mm | Thickness: 0.1 mm\nResult: ~268.8 meters (~882 ft) across ~620 wound turns.'**
  String get helpExampleContent;

  /// No description provided for @helpLimitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Validation & Limitations'**
  String get helpLimitsTitle;

  /// No description provided for @helpLimitsContent.
  ///
  /// In en, this message translates to:
  /// **'Archimedean spiral geometric approximation. Does not account for winding tension compaction, material stretch, or uneven layer thickness.'**
  String get helpLimitsContent;

  /// No description provided for @helpDataAndPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Local Data & Ads'**
  String get helpDataAndPrivacyTitle;

  /// No description provided for @helpDataAndPrivacyContent.
  ///
  /// In en, this message translates to:
  /// **'All estimations run locally on your phone without network calls or storage permissions. An AdMob banner is displayed at the bottom.'**
  String get helpDataAndPrivacyContent;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pt',
    'ru',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
