import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/application_theme.dart';
import 'layout/home_layout.dart';
import 'moduls/quran/quran_details.dart';
import 'moduls/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
    );
  }
}
