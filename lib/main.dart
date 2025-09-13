import 'package:flutter/material.dart';
import 'package:islami/ui/OnboardingScreens.dart';
import 'package:islami/ui/home/HadeethPage.dart';
import 'package:islami/ui/home/HomeScreen.dart';
import 'package:islami/ui/home/SearchQuranPage.dart';
import 'package:islami/ui/home/SebhaPage.dart';
import 'package:islami/utils/AllRouteNames.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Allroutenames.OnBoardingScreenRoutename,
      routes: {
        Allroutenames.HomeScreenRoutename: (context) => Homescreen(),
        Allroutenames.OnBoardingScreenRoutename: (context) => OnBoardingPage(),
        Allroutenames.roteteRoutename: (context) => sebhapage(),
        Allroutenames.SearchQuranpage: (context) => searchquranpage(),
        Allroutenames.Hadeethpage: (context) => Hadeethpage(),
      },
    );
  }
}