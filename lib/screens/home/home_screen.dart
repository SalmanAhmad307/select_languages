import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:select_languages/controllers/language_change_controller.dart';
import 'package:select_languages/controllers/themes/light_theme.dart';
import 'package:select_languages/widgets/switch_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Languages {
  english,
  spanish,
  arabic,
  urdu
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.helloWord,
        ),
        actions: [
          Consumer<LanguageChangeProvider>(builder: (context, provider, child) {
            return PopupMenuButton(
              onSelected: (Languages item) {
                if (Languages.english == item) {
                  provider.changeLanguage(const Locale('en'));
                } else if (Languages.arabic == item) {
                  provider.changeLanguage(const Locale('ar'));
                } else if (Languages.urdu == item) {
                  provider.changeLanguage(const Locale('ur'));
                } else {
                  provider.changeLanguage(const Locale('es'));
                }
              },
              itemBuilder: (context) => <PopupMenuEntry<Languages>>[
                const PopupMenuItem(
                  value: Languages.english,
                  child: Text('English'),
                ),
                const PopupMenuItem(
                  value: Languages.spanish,
                  child: Text('Spanish'),
                ),
                const PopupMenuItem(
                  value: Languages.arabic,
                  child: Text('Arabic'),
                ),
                const PopupMenuItem(
                  value: Languages.urdu,
                  child: Text('Urdu'),
                ),
              ],
            );
          }),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.name,

            ),
            const SizedBox(height: 20,),
            Text(
              AppLocalizations.of(context)!.fatherName,
            ),
            const SizedBox(height: 20,),
           const Text('Hello This Is Theme Work'),


           Consumer<LanguageChangeProvider>(
               builder: (context, provider, child) {
              return Switch(
            value: provider.currentTheme == LanguageChangeProvider.darkTheme,
            onChanged: (value) {
              provider.onThemeChanged(value);
            },
          );
        },
      ),
          ],
        ),
      ),
    );
  }
}


