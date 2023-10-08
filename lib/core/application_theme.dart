import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    colorScheme: ColorScheme.fromSeed(
        primary: Color(0xFFB7935F),
        seedColor: Color(0xFFB7935F),
        onSecondary: Colors.black,
        onPrimary: Color(0xFFB7935F),
        onBackground: Color(0xFFF8F8F8),
        onPrimaryContainer: Color(0xFFB7935F).withOpacity(0.9)),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 32,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 32,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xFFB7935F).withOpacity(0.7),
    ),
    dividerColor: const Color(0xFFB7935F),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF141A2E),
    colorScheme: ColorScheme.fromSeed(
      primary: Color(0xFF141A2E),
      seedColor: Color(0xFF141A2E),
      onSecondary: Color(0xFFFACC1D),
      onPrimary: Color(0xFFFACC1D),
      onBackground: Color(0xFF141A2E),
      onPrimaryContainer: Color(0xFF141A2E).withOpacity(0.9),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF141A2E),
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 32,
      ),
      selectedItemColor: Color(0xFFFACC1D),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 32,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Color(0xFF141A2E),
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xFF141A2E).withOpacity(0.9),
    ),
    dividerColor: Color(0xFFFACC1D),
  );
}
