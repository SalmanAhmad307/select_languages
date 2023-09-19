import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:select_languages/controllers/language_change_controller.dart';
import 'package:select_languages/controllers/themes/light_theme.dart';
import 'package:select_languages/controllers/themes/dark_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:select_languages/screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguageChangeProvider()),
      ],
      child: Consumer<LanguageChangeProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            locale: provider.appLocale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('es'),
              Locale('ar'),
              Locale('ur'),
            ],
            theme: provider.currentTheme,
            home: const HomeScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}















// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:select_languages/controllers/themes/light_theme.dart';
// import 'package:select_languages/widgets/switch_button_widget.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => ThemeProvider(),
//       child: Consumer<ThemeProvider>(
//         builder: (context, themeProvider, child) {
//           return MaterialApp(
//             theme: themeProvider.currentTheme,
//             home: MyHomePage(),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Theme Switcher'),
//         actions: [ThemeSwitcher()],
//       ),
//       body: Center(
//         child: Text(
//           'Hello, Flutter!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
