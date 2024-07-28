import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      shadow: Colors.black12,
    ),
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
  Color get colorPrimary => Colors.green;
  Color get colorForeground => Theme.of(this).colorScheme.onSurface;
  Color get colorBackground => Theme.of(this).colorScheme.surface;
  Color get colorGrey1 => Color.lerp(colorBackground, colorForeground, 0.2)!;
  Color get colorGrey2 => Color.lerp(colorBackground, colorForeground, 0.4)!;
  Color get colorGrey3 => Color.lerp(colorBackground, colorForeground, 0.6)!;
  Color get colorGrey4 => Color.lerp(colorBackground, colorForeground, 0.8)!;

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
