import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami1/moduls/quran/quran_view.dart';
import 'package:provider/provider.dart';

import '../../core/application_theme.dart';
import '../../core/provider/app_provider.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = 'quran_details';

  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String contect = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (contect.isEmpty) readFiles(args.suraNumber);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة${args.suraName}",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSecondary,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: theme.colorScheme.onSecondary,
                  ),
                ],
              ),
              Divider(
                endIndent: 30,
                indent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "(${index + 1})${allVerses[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onSecondary,
                      height: 1.8,
                    ),
                  ),
                  itemCount: allVerses.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    contect = text;
    contect.split("\n");
    setState(() {
      allVerses = contect.split("\n");
    });
  }
}
