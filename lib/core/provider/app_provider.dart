import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String currentLocal = 'en';
  ThemeMode currentTheme = ThemeMode.light;

  ChangeLanguage(String newLanguege) {
    if (currentLocal == newLanguege) return;
    currentLocal = newLanguege;
    notifyListeners();
  }

  ChangeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String backgroundImage() {
    return isDark()
        ? 'assets/images/background_dark.png'
        : 'assets/images/background_light.png';
  }

  String HeaderSeb7a() {
    return isDark()
        ? "assets/images/dark_head_of_seb7a.png"
        : "assets/images/head_of_seb7a.png";
  }

  String BodySeb7a() {
    return isDark()
        ? "assets/images/dark_body_of_seb7a.png"
        : "assets/images/body_of_seb7a.png";
  }
}
