import 'package:flutter/material.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

class Hadeethcontainer extends StatelessWidget {
  String TitleOfHadeeth;
  String ContentOffHadeeth;

  Hadeethcontainer({
    required this.TitleOfHadeeth,
    required this.ContentOffHadeeth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        // width: 400,
        // height:618.0000610351562 ,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Appimages.hadeethcardbackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  TitleOfHadeeth,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Appcolors.blackcolor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  ContentOffHadeeth,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Appcolors.blackcolor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
