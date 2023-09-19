// import 'package:flutter/material.dart';
//
// class ThemeProvider with ChangeNotifier {
//   static final ThemeData _lightTheme = ThemeData(
//     primaryColor: Colors.teal,
//     hintColor: Colors.white,
//     brightness: Brightness.light,
//     textTheme: TextTheme(
//       bodyText1: TextStyle(color: Colors.black),
//     ),
//   );
//
//   static ThemeData darkTheme = ThemeData(
//     primaryColor: Colors.red,
//     hintColor: Colors.black,
//     brightness: Brightness.dark,
//     textTheme: TextTheme(
//       bodyText1: TextStyle(color: Colors.white),
//     ),
//   );
//
//   ThemeData _currentTheme = _lightTheme;
//
//   ThemeData get currentTheme => _currentTheme;
//
//   void toggleTheme() {
//     _currentTheme = _currentTheme == _lightTheme ? darkTheme : _lightTheme;
//     print(_currentTheme);
//     notifyListeners();
//   }
// }
