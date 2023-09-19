import 'package:flutter/material.dart';
import 'package:select_languages/constants/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChangeProvider with ChangeNotifier {
  LanguageChangeProvider() {
    getLocale();
    getTheme();
  }

  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.hintColor,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
      textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20,
            color: AppColors.hintColor,
            fontWeight: FontWeight.bold,
          )
      )
    // Add your light theme properties here
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.red,
    hintColor: Colors.black,
    brightness: Brightness.dark,
    // Add your dark theme properties here
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.secondaryTextColor,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      )
    )
  );

  ThemeData _currentTheme = lightTheme;
  ThemeData get currentTheme => _currentTheme;

  setTheme(String themeName) async {
    SharedPreferences themePreferences = await SharedPreferences.getInstance();
    await themePreferences.setString('theme', themeName);
  }

  void onThemeChanged(bool value) async {
    _currentTheme = value ? darkTheme : lightTheme;
    await setTheme(value ? 'dark' : 'light');
    notifyListeners();
  }

  Future<void> getTheme() async {
    SharedPreferences themePreferences = await SharedPreferences.getInstance();
    String? savedTheme = themePreferences.getString('theme');
    if (savedTheme == 'dark') {
      onThemeChanged(true);
    }
  }

  setLocale(String value) {
    _appLocale = Locale(value);
    notifyListeners();
  }

  Future<void> getLocale() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final String languageCode =
        sharedPreferences.getString('language_code') ?? '';
    setLocale(languageCode);
  }

  void changeLanguage(Locale type) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _appLocale = type;
    await sharedPreferences.setString('language_code', type.languageCode);
    notifyListeners();
  }
}
