import 'package:flutter/cupertino.dart';
import 'package:islami/ui/home/SurahNumberImage.dart';
import 'package:islami/utils/AppColors.dart';

class Suradetailscontainer extends StatelessWidget {
  int surahnumber;
  String ArabicName;
  String EnglishName;
  String Verses;

  Suradetailscontainer({
    required this.surahnumber,
    required this.ArabicName,
    required this.EnglishName,
    required this.Verses,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 386,
      height: 70,
      decoration: BoxDecoration(color: Appcolors.Scaffoldcolor),
      child: Row(
        children: [
          SurahNumberImage(number: surahnumber),
          SizedBox(width: 10),
          Column(
            children: [
              Text(
                EnglishName,
                style: TextStyle(
                  color: Appcolors.whitecolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$Verses verses',
                style: TextStyle(
                  color: Appcolors.whitecolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Expanded(
            child: Text(
              ArabicName,
              style: TextStyle(
                color: Appcolors.whitecolor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
