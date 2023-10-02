import 'package:flutter/material.dart';

import '../moduls/hadeth/hadeth_view.dart';
import '../moduls/quran/quran_view.dart';
import '../moduls/radio/radio_view.dart';
import '../moduls/settings/settings_view.dart';
import '../moduls/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'home_layout';

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screes = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
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
        body: screes[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth_icon.png")),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: 'Tasbeh'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
        ),
      ),
    );
  }
}
