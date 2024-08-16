import 'package:article_preview_component/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      theme: _buildTheme(Brightness.dark),
      home: const MainScreen(),
    ),
  );
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);
  return baseTheme.copyWith(
    textTheme: GoogleFonts.manropeTextTheme(baseTheme.textTheme),
  );
}
