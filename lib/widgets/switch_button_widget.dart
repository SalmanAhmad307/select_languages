//
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:select_languages/controllers/themes/light_theme.dart';
//
// class ThemeSwitcher extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeProvider>(
//       builder: (context, themeProvider, child) {
//         return Switch(
//           value: themeProvider.currentTheme == ThemeProvider.darkTheme,
//           onChanged: (value) {
//             themeProvider.toggleTheme();
//           },
//         );
//       },
//     );
//   }
// }