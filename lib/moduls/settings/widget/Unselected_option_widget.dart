import 'package:flutter/material.dart';

class UnselectedOptionWidget extends StatelessWidget {
  final String unSelectedTitle;

  const UnselectedOptionWidget({super.key, required this.unSelectedTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(unSelectedTitle),
    );
  }
}
