import 'package:flutter/material.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

class SurahNumberImage extends StatelessWidget {
  int number;

  SurahNumberImage({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(Appimages.SuraNumberContainer, fit: BoxFit.fill),
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Appcolors.whitecolor,
            ),
          ),
        ],
      ),
    );
  }
}
