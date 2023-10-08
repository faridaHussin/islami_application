import 'package:flutter/material.dart';
import 'package:islami1/moduls/settings/widget/selected_option_widget.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/app_provider.dart';
import 'Unselected_option_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  final selectedTitle;

  const LanguageBottomSheetWidget({super.key, required this.selectedTitle});

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
        children: [
          GestureDetector(
              onTap: () {
                appProvider.ChangeLanguage('en');
                Navigator.pop(context);
              },
              child: appProvider.currentLocal == 'en'
                  ? SelectedOptionWidget(SelectedTitle: "English")
                  : UnselectedOptionWidget(unSelectedTitle: "English")),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    appProvider.ChangeLanguage('ar');
                    Navigator.pop(context);
                  },
                  child: appProvider.currentLocal == 'ar'
                      ? SelectedOptionWidget(SelectedTitle: "عربى")
                      : UnselectedOptionWidget(unSelectedTitle: "عربى")),
            ],
          ),
        ],
      ),
    );
  }
}
