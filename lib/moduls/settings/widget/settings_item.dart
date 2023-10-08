import 'package:flutter/material.dart';

import '../settings_view.dart';

typedef SettingsOptionClick = void Function();

class SettingsItem extends StatelessWidget {
  final String settingOptionTitle, selectedOption;
  final SettingsOptionClick onOptionTaped;

  const SettingsItem(
      {super.key,
      required this.settingOptionTitle,
      required this.selectedOption,
      required this.onOptionTaped});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          settingOptionTitle,
          style: theme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: onOptionTaped,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: theme.colorScheme.onPrimary,
                width: 1.2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(selectedOption),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: theme.colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
