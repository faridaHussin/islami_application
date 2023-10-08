import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami1/moduls/hadeth/hadeth_details.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContect = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContect.isEmpty) readFiles();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/header_hadeth.png"),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          color: theme.primaryColor,
        ),
        Text(
          'الأحاديث',
          style: theme.textTheme.bodyLarge,
        ),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          color: theme.colorScheme.onPrimary,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments: HadethContent(
                        title: allHadethContect[index].title,
                        content: allHadethContect[index].content));
              },
              child: Text(allHadethContect[index].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge),
            ),
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
              endIndent: 80,
              indent: 80,
              color: theme.colorScheme.onPrimary,
            ),
            itemCount: allHadethContect.length,
          ),
        ),
      ],
    );
  }

  readFiles() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = text.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      HadethContent hadethContent =
          HadethContent(title: title, content: content);
      setState(() {
        allHadethContect.add(hadethContent);
      });
      print(title);
    }
  }
}

class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.title, required this.content});
}
