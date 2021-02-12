import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFF3876BF);
const accentColor = const Color(0xFF3876BF);

ThemeData appTheme() {
  return ThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      accentColor: accentColor,
      scaffoldBackgroundColor: Color(0xFF2a2a2a),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent);
}
