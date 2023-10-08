import 'package:flutter/material.dart';
import 'package:islami1/moduls/settings/widget/selected_option_widget.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/app_provider.dart';
import 'Unselected_option_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheetWidget extends StatelessWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                appProvider.ChangeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? SelectedOptionWidget(SelectedTitle: local.dark)
                  : UnselectedOptionWidget(unSelectedTitle: local.dark)),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    appProvider.ChangeTheme(ThemeMode.light);
                    Navigator.pop(context);
                  },
                  child: appProvider.isDark()
                      ? UnselectedOptionWidget(unSelectedTitle: local.light)
                      : SelectedOptionWidget(SelectedTitle: local.light)),
            ],
          ),
        ],
      ),
    );
  }
}
