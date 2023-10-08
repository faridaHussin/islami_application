import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset("assets/images/body_radio.png"),
          ),
          SizedBox(
            height: 30,
          ),
          Text("أذاعة القرآن الكريم"),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_double_arrow_left_outlined,
                  size: 30,
                ),
                color: theme.colorScheme.onPrimary,
              ),
              SizedBox(
                width: 15,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 50,
                ),
                color: theme.colorScheme.onPrimary,
              ),
              SizedBox(
                width: 15,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_double_arrow_right, size: 30),
                color: theme.colorScheme.onPrimary,
              )
            ],
          ),
        ],
      ),
    );
  }
}
