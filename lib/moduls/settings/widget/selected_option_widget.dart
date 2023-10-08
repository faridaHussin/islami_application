import 'package:flutter/material.dart';
import 'package:islami1/moduls/settings/widget/Unselected_option_widget.dart';

class SelectedOptionWidget extends StatelessWidget {
  final String SelectedTitle;

  const SelectedOptionWidget({super.key, required this.SelectedTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(SelectedTitle),
          Icon(
            Icons.check,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
