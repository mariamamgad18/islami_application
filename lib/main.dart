import 'package:flutter/material.dart';
import 'package:islami/ui/home/HomeScreen.dart';
import 'package:islami/utils/AllRouteNames.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Allroutenames.HomeScreenRoutename,
      routes: {Allroutenames.HomeScreenRoutename: (context) => Homescreen()},
    );
  }
}