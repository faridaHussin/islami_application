import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  const QuranDetails({super.key});

  static const String routeName = 'quran_details';

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background_light.png"),
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
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sura name",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
                  ),
                ],
              ),
              Divider(
                endIndent: 30,
                indent: 30,
                color: theme.primaryColor,
                thickness: 1.2,
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
