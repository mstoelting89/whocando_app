import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightScaffoldBackgroundColor = Color(0xFF53A2BE);
  static const Color _lightPrimaryColor = Color(0xFF0A2239);
  //static const Color _lightScaffoldBackgroundColorGradient = Colors.white;
  static const Color _appbarColorLight = Color(0xFF53A2BE);

  static const Color _lightTextColorPrimary = Colors.white;

  static const Color _lightTextColorSecondary = Colors.black;

  static const Color _iconColor = Colors.white;

  static const Color _accentColorLight = Color(0xFF176087);

  static const TextStyle _lightHeadingText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Poppins",
      fontSize: 20,
      fontWeight: FontWeight.normal);

  static const TextStyle _lightBodyText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Poppins",
      fontWeight: FontWeight.normal,
      fontSize: 14);

  static const TextStyle _lightBodyText2 = TextStyle(
      color: _lightTextColorSecondary,
      fontFamily: "Poppins",
      fontWeight: FontWeight.normal,
      fontSize: 14);

  static const TextTheme _lightTextTheme = TextTheme(
    headline1: _lightHeadingText,
    bodyText1: _lightBodyText,
    bodyText2: _lightBodyText2
  );

  static final ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          color: _appbarColorLight,
          iconTheme: IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorLight,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme.light(
          primary: _lightPrimaryColor,
          onPrimary: _lightScaffoldBackgroundColor,
          secondary: _accentColorLight),
      textTheme: _lightTextTheme);
}

