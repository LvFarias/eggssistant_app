import 'package:flutter/material.dart';

ThemeData myTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0XFFECFEFD),
    colorScheme: const ColorScheme(
      primary: Color(0XFF8A05BE),
      onPrimary: Color(0XFF0E0114),
      secondary: Color(0XFF0ABAB5),
      onSecondary: Color(0XFF0E0114),
      error: Color(0XFF6E1610),
      onError: Color(0XFFECFEFD),
      surface: Color(0XFF0ABAB5),
      onSurface: Color(0XFF0E0114),
      brightness: Brightness.light,
    ),
  );
}

ThemeData myThemeDark() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0XFF0E0114),
    colorScheme: const ColorScheme(
      primary: Color(0XFF0ABAB5),
      onPrimary: Color(0XFFECFEFD),
      secondary: Color(0XFF8A05BE),
      onSecondary: Color(0XFFECFEFD),
      error: Color(0XFF6E1610),
      onError: Color(0XFFECFEFD),
      surface: Color(0XFF8A05BE),
      onSurface: Color(0XFFECFEFD),
      brightness: Brightness.dark,
    ),
  );
}
