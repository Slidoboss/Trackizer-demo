//PACKAGES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

//SCREENS
import './onboarding_view.dart';
//import './gettingstarted_view.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _themeData,
      home: const OnboardingView(),
      //home: const GettingstartedView(),
    );
  }
}

//THEME
var _kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 80, 46, 148));
ThemeData _themeData = ThemeData().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 39, 32, 57),
  colorScheme: _kColorScheme,
  filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(backgroundColor: Colors.deepOrangeAccent)),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 28),
    titleMedium: GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 8,
      fontWeight: FontWeight.w300,
    ),
    displayLarge: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    displayMedium: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  ),
);
