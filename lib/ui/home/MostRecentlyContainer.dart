import 'package:flutter/cupertino.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

class MostRecentlyContainer extends StatelessWidget {
  String SuraNameInEnglish;
  String SuraNameInArabic;
  String NumberOfVerses;

  MostRecentlyContainer({
    required this.SuraNameInEnglish,
    required this.SuraNameInArabic,
    required this.NumberOfVerses,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15),
      child: Container(
        width: 283,
        height: 150,
        decoration: BoxDecoration(
          color: Appcolors.biegecolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    SuraNameInEnglish,
                    style: TextStyle(
                      color: Appcolors.blackcolor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Text(
                    SuraNameInArabic,
                    style: TextStyle(
                      color: Appcolors.blackcolor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '$NumberOfVerses verses',
                    style: TextStyle(
                      color: Appcolors.blackcolor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Expanded(child: Image.asset(Appimages.mostrecent)),
            ],
          ),
        ),
      ),
    );
  }
}
