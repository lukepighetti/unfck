import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _primaryColor = Colors.blue;

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      shadow: Colors.black12,
    ),
    highlightColor: _primaryColor.withOpacity(0.2),
    hoverColor: _primaryColor.withOpacity(0.1),
    splashFactory: NoSplash.splashFactory,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}

extension ThemeExtensions on BuildContext {
  Color get colorPrimary => _primaryColor;
  Color get colorForeground => Theme.of(this).colorScheme.onSurface;
  Color get colorBackground => Theme.of(this).colorScheme.surface;
  Color get colorGrey1 => Theme.of(this).colorScheme.surfaceContainerLowest;
  Color get colorGrey2 => Theme.of(this).colorScheme.surfaceContainerLow;
  Color get colorGrey3 => Theme.of(this).colorScheme.surfaceContainer;
  Color get colorGrey4 => Theme.of(this).colorScheme.surfaceContainerHigh;
  Color get colorGrey5 => Theme.of(this).colorScheme.surfaceContainerHighest;

  TextStyle get textHeadline => GoogleFonts.outfit(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  TextStyle get textBody => GoogleFonts.outfit(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  TextStyle get textButton => GoogleFonts.outfit(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textCaption => GoogleFonts.outfit(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
}
