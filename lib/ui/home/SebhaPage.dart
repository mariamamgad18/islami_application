import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

import 'RotateImage.dart';

class sebhapage extends StatefulWidget {
  @override
  State<sebhapage> createState() => _sebhapageState();
}

class _sebhapageState extends State<sebhapage> {
  List<String> tasbeeh = [
    "ٍسبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
  ];

  int counter = 0;
  int index = 0;
  double angle = 0;

  void countTasbeeh() {
    setState(() {
      counter++;
      angle += pi / 6;

      if (counter > 33) {
        counter = 0;
        index++;
        if (index >= tasbeeh.length) {
          index = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Appimages.sebhapagebackground,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60, left: 60),
                  child: Image.asset(
                    Appimages.islamilogo,
                    fit: BoxFit.fill,
                    width: 289,
                    height: 129,
                  ),
                ),
                Text(
                  "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                  style: TextStyle(
                    color: Appcolors.whitecolor,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: countTasbeeh,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, top: 10, bottom: 70),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          RotateImages(angle: angle),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                tasbeeh[index],
                                style: TextStyle(
                                  color: Appcolors.whitecolor,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                counter.toString(),
                                style: TextStyle(
                                  color: Appcolors.whitecolor,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
