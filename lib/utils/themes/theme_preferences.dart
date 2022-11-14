import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {

  static const themeStatus = "THEMESTATUS";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeStatus, value);
  }

  Future<ThemeMode> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final status = prefs.getBool(themeStatus) ?? false;
    return status ? ThemeMode.dark : ThemeMode.light;
  }
}