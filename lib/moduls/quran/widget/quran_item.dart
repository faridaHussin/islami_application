import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const QuranItem(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Text(
          suraNumber,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        )),
        Container(
          height: 45,
          width: 1.2,
          color: theme.primaryColor,
        ),
        Expanded(
            child: Text(
          suraName,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        )),
      ],
    );
  }
}
