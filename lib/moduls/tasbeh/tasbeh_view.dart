import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 1;
  int azkarIndex = 0;
  double angle = 0;
  List<String> azkar = [
    "الله أكبر",
    "سبحان الله",
    "لا اله ألا الله",
    "الحمدلله",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset(appProvider.HeaderSeb7a())),
              Transform.rotate(
                angle: angle,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 59),
                  child: Image.asset(appProvider.BodySeb7a()),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "عدد التسبيحات",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: theme.colorScheme.onPrimaryContainer,
            ),
            height: 70,
            width: 60,
            child: Text(
              counter.toString(),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              if (counter == 30) {
                counter = 1;
                azkarIndex++;
                if (azkarIndex == azkar.length - 1) {
                  azkarIndex = 0;
                } else {
                  azkarIndex++;
                }
              } else {
                counter++;
              }
              angle = angle + 15;
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Text(
              azkar[azkarIndex],
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
