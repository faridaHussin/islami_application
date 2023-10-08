import 'package:flutter/material.dart';
import 'package:islami1/moduls/settings/widget/language_bottom_sheet_widget.dart';
import 'package:islami1/moduls/settings/widget/settings_item.dart';
import 'package:islami1/moduls/settings/widget/theme_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          SettingsItem(
              settingOptionTitle: local.language,
              selectedOption:
                  appProvider.currentLocal == 'en' ? "English" : "عربى",
              onOptionTaped: () {
                showLanguageBottomSheet(context);
              }),
          SizedBox(
            height: 40,
          ),
          SettingsItem(
              settingOptionTitle: local.theme_mood,
              selectedOption: appProvider.isDark() ? local.dark : local.light,
              onOptionTaped: () {
                showThemeBottomSheet(context);
              }),
        ],
      ),
    );
  }
}

void showLanguageBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => LanguageBottomSheetWidget(selectedTitle: "English"),
  );
}

void showThemeBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => ThemeBottomSheetWidget(),
  );
}
