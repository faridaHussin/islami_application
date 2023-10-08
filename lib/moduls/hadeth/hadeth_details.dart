import 'package:flutter/material.dart';
import 'package:islami1/moduls/hadeth/hadeth_view.dart';
import 'package:provider/provider.dart';

import '../../core/application_theme.dart';
import '../../core/provider/app_provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth_details';
  String contect = "";
  List<String> allVerses = [];

  HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              appProvider.isDark()
                  ? 'assets/images/background_dark.png'
                  : 'assets/images/background_light.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("إسلامى"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 30, left: 30, bottom: 120, right: 30),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          height: mediaQuery.height,
          width: mediaQuery.width,
          decoration: BoxDecoration(
            color: theme.colorScheme.onBackground,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSecondary,
                ),
              ),
              Divider(
                endIndent: 30,
                indent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.onSecondary,
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
