import 'package:flutter/material.dart';
import 'package:unmutify/utils/themes/theme_preferences.dart';

class ThemeProvider extends ChangeNotifier {

  ThemePreferences themePreferences = ThemePreferences();

  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  ThemeProvider() {
    getTheme();
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    themePreferences.setDarkTheme(isOn);
    notifyListeners();
  }

  void getTheme() async {
    themeMode = await themePreferences.getTheme();
    notifyListeners();
  }
}