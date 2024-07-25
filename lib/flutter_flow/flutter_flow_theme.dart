// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color onPrimary;
  late Color onSecondary;
  late Color onTertiary;
  late Color primaryContainer;
  late Color secondaryContainer;
  late Color tertiaryContainer;
  late Color errorContainer;
  late Color onPrimaryContainer;
  late Color onSecondaryContainer;
  late Color onTertiaryContainer;
  late Color onErrorContainer;
  late Color primaryFixed;
  late Color primaryFixedDim;
  late Color secondaryFixed;
  late Color secondaryFixedDim;
  late Color tertiaryFixed;
  late Color tertiaryFixedDim;
  late Color onPrimaryFixed;
  late Color onPrimaryFixedVariant;
  late Color onSecondaryFixed;
  late Color onSecondaryFixedVariant;
  late Color onTertiaryFixed;
  late Color onTertiaryFixedVariant;
  late Color surfaceDim;
  late Color surfaceBright;
  late Color inverseSurface;
  late Color onInverseSurface;
  late Color outline;
  late Color scrim;
  late Color shadow;
  late Color onError;
  late Color outlineVariant;
  late Color disabledBackground;
  late Color disabledText;
  late Color onSurfaceVariant;
  late Color onSurface;
  late Color surfContainerLowest;
  late Color surfContainerLow;
  late Color surfContainer;
  late Color surfContainerHigh;
  late Color surfContainerHighest;
  late Color surfaceVariant;
  late Color inversePrimary;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF6750A4);
  late Color secondary = const Color(0xFF625B71);
  late Color tertiary = const Color(0xFF7D5260);
  late Color alternate = const Color(0xFFD0BCFF);
  late Color primaryText = const Color(0xFF1D1B20);
  late Color secondaryText = const Color(0xFF49454F);
  late Color primaryBackground = const Color(0xFFFEF7FF);
  late Color secondaryBackground = const Color(0xFFF3EDF7);
  late Color accent1 = const Color(0xFFFFFFFF);
  late Color accent2 = const Color(0xFFF7F2FA);
  late Color accent3 = const Color(0xFFECE6F0);
  late Color accent4 = const Color(0xFFE6E0E9);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFB3261E);
  late Color info = const Color(0xFF1C4494);

  late Color onPrimary = const Color(0xFFFFFFFF);
  late Color onSecondary = const Color(0xFFFFFFFF);
  late Color onTertiary = const Color(0xFFFFFFFF);
  late Color primaryContainer = const Color(0xFFEADDFF);
  late Color secondaryContainer = const Color(0xFFE8DEF8);
  late Color tertiaryContainer = const Color(0xFFFFD8E4);
  late Color errorContainer = const Color(0xFFF9DEDC);
  late Color onPrimaryContainer = const Color(0xFF21005D);
  late Color onSecondaryContainer = const Color(0xFF1D192B);
  late Color onTertiaryContainer = const Color(0xFF31111D);
  late Color onErrorContainer = const Color(0xFF410E0B);
  late Color primaryFixed = const Color(0xFFEADDFF);
  late Color primaryFixedDim = const Color(0xFFD0BCFF);
  late Color secondaryFixed = const Color(0xFFE8DEF8);
  late Color secondaryFixedDim = const Color(0xFFCCC2DC);
  late Color tertiaryFixed = const Color(0xFFFFD8E4);
  late Color tertiaryFixedDim = const Color(0xFFEFB8C8);
  late Color onPrimaryFixed = const Color(0xFF21005D);
  late Color onPrimaryFixedVariant = const Color(0xFF4F378B);
  late Color onSecondaryFixed = const Color(0xFF1D192B);
  late Color onSecondaryFixedVariant = const Color(0xFF4A4458);
  late Color onTertiaryFixed = const Color(0xFF31111D);
  late Color onTertiaryFixedVariant = const Color(0xFF633B48);
  late Color surfaceDim = const Color(0xFFDED8E1);
  late Color surfaceBright = const Color(0xFFFEF7FF);
  late Color inverseSurface = const Color(0xFF322F35);
  late Color onInverseSurface = const Color(0xFFF5EFF7);
  late Color outline = const Color(0xFF79747E);
  late Color scrim = const Color(0xFF000000);
  late Color shadow = const Color(0xFF000000);
  late Color onError = const Color(0xFFFFFFFF);
  late Color outlineVariant = const Color(0xFFCAC4D0);
  late Color disabledBackground = const Color(0xFFDFDAE0);
  late Color disabledText = const Color(0xFF8E898D);
  late Color onSurfaceVariant = const Color(0xFF49454F);
  late Color onSurface = const Color(0xFF1D1B20);
  late Color surfContainerLowest = const Color(0xFFFFFFFF);
  late Color surfContainerLow = const Color(0xFFF7F2FA);
  late Color surfContainer = const Color(0xFFF3EDF7);
  late Color surfContainerHigh = const Color(0xFFECE6F0);
  late Color surfContainerHighest = const Color(0xFFE6E0E9);
  late Color surfaceVariant = const Color(0xFFE7E0EC);
  late Color inversePrimary = const Color(0xFFD0BCFF);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Poppins';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
        fontStyle: FontStyle.normal,
      );
  String get displayMediumFamily => 'Poppins';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
        fontStyle: FontStyle.normal,
      );
  String get displaySmallFamily => 'Poppins';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 36.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Poppins';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineMediumFamily => 'Poppins';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 28.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineSmallFamily => 'Poppins';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
        fontStyle: FontStyle.normal,
      );
  String get titleLargeFamily => 'Poppins';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 22.0,
        fontStyle: FontStyle.normal,
      );
  String get titleMediumFamily => 'Poppins';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get titleSmallFamily => 'Poppins';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
      );
  String get labelLargeFamily => 'Poppins';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
      );
  String get labelMediumFamily => 'Poppins';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        fontStyle: FontStyle.normal,
      );
  String get labelSmallFamily => 'Poppins';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
        fontStyle: FontStyle.normal,
      );
  String get bodyLargeFamily => 'Poppins';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get bodyMediumFamily => 'Poppins';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
      );
  String get bodySmallFamily => 'Poppins';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Poppins',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        fontStyle: FontStyle.normal,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFD0BCFF);
  late Color secondary = const Color(0xFFCCC2DC);
  late Color tertiary = const Color(0xFFEFB8C8);
  late Color alternate = const Color(0xFF6750A4);
  late Color primaryText = const Color(0xFFE6E0E9);
  late Color secondaryText = const Color(0xFFCAC4D0);
  late Color primaryBackground = const Color(0xFF141218);
  late Color secondaryBackground = const Color(0xFF211F26);
  late Color accent1 = const Color(0xFF0F0D13);
  late Color accent2 = const Color(0xFF1D1B20);
  late Color accent3 = const Color(0xFF2B2930);
  late Color accent4 = const Color(0xFF36343B);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFF2B8B5);
  late Color info = const Color(0xFF1C4494);

  late Color onPrimary = const Color(0xFF381E72);
  late Color onSecondary = const Color(0xFF332D41);
  late Color onTertiary = const Color(0xFF492532);
  late Color primaryContainer = const Color(0xFF4F378B);
  late Color secondaryContainer = const Color(0xFF4A4458);
  late Color tertiaryContainer = const Color(0xFF633B48);
  late Color errorContainer = const Color(0xFF8C1D18);
  late Color onPrimaryContainer = const Color(0xFFEADDFF);
  late Color onSecondaryContainer = const Color(0xFFE8DEF8);
  late Color onTertiaryContainer = const Color(0xFFFFD8E4);
  late Color onErrorContainer = const Color(0xFFF9DEDC);
  late Color primaryFixed = const Color(0xFFEADDFF);
  late Color primaryFixedDim = const Color(0xFFD0BCFF);
  late Color secondaryFixed = const Color(0xFFE8DEF8);
  late Color secondaryFixedDim = const Color(0xFFCCC2DC);
  late Color tertiaryFixed = const Color(0xFFFFD8E4);
  late Color tertiaryFixedDim = const Color(0xFFEFB8C8);
  late Color onPrimaryFixed = const Color(0xFF21005D);
  late Color onPrimaryFixedVariant = const Color(0xFF4F378B);
  late Color onSecondaryFixed = const Color(0xFF1D192B);
  late Color onSecondaryFixedVariant = const Color(0xFF4A4458);
  late Color onTertiaryFixed = const Color(0xFF31111D);
  late Color onTertiaryFixedVariant = const Color(0xFF633B48);
  late Color surfaceDim = const Color(0xFF141218);
  late Color surfaceBright = const Color(0xFF3B383E);
  late Color inverseSurface = const Color(0xFFE6E0E9);
  late Color onInverseSurface = const Color(0xFF322F35);
  late Color outline = const Color(0xFF938F99);
  late Color scrim = const Color(0xFF000000);
  late Color shadow = const Color(0xFF000000);
  late Color onError = const Color(0xFF601410);
  late Color outlineVariant = const Color(0xFF49454F);
  late Color disabledBackground = const Color(0xFF2F2D2F);
  late Color disabledText = const Color(0xFF646265);
  late Color onSurfaceVariant = const Color(0xFFCAC4D0);
  late Color onSurface = const Color(0xFFE6E0E9);
  late Color surfContainerLowest = const Color(0xFF0F0D13);
  late Color surfContainerLow = const Color(0xFF1D1B20);
  late Color surfContainer = const Color(0xFF211F26);
  late Color surfContainerHigh = const Color(0xFF2B2930);
  late Color surfContainerHighest = const Color(0xFF36343B);
  late Color surfaceVariant = const Color(0xFF49454F);
  late Color inversePrimary = const Color(0xFF6750A4);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}
