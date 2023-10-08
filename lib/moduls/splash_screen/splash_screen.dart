import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami1/core/application_theme.dart';
import 'package:islami1/layout/home_layout.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash_screen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      body: Image.asset(
        appProvider.isDark()
            ? 'assets/images/splash_screen_dark.png'
            : 'assets/images/splash_screen.png',
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.fill,
      ),
    );
  }
}
