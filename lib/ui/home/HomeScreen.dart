import 'package:flutter/material.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

import 'SearchQuranPage.dart';
import 'SebhaPage.dart';
import 'SelectedContainer.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    searchquranpage(),
    sebhapage(),
    sebhapage(),
    sebhapage(),
    sebhapage(),
  ];

  void onTabitem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Appcolors.biegecolor,
        selectedItemColor: Appcolors.whitecolor,
        currentIndex: selectedIndex,
        onTap: onTabitem,
        type: BottomNavigationBarType.fixed,
        items: [

          BottomNavigationBarItem(
              icon: Image.asset(Appimages.quranicon, height: 26, width: 26,),
              label: "",
              activeIcon: selectedcontainer(iconimage: Appimages.quranicon,)),
          BottomNavigationBarItem(
              icon: Image.asset(Appimages.hadeethicon, height: 26, width: 26),
              label: "",
              activeIcon: selectedcontainer(iconimage: Appimages.hadeethicon)),
          BottomNavigationBarItem(
              icon: Image.asset(Appimages.sebhaicon, height: 26, width: 26),
              label: "",
              activeIcon: selectedcontainer(iconimage: Appimages.sebhaicon)),
          BottomNavigationBarItem(
              icon: Image.asset(Appimages.radioicon, height: 26, width: 26),
              label: "",
              activeIcon: selectedcontainer(iconimage: Appimages.radioicon)),
          BottomNavigationBarItem(
              icon: Image.asset(Appimages.timeicon, height: 26, width: 26),
              label: "",
              activeIcon: selectedcontainer(iconimage: Appimages.timeicon)),

        ],
      ),
    );
  }
}
