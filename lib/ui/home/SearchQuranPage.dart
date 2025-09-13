import 'package:flutter/material.dart';
import 'package:islami/ui/home/MostRecentlyContainer.dart';
import 'package:islami/ui/home/QuranData.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

import 'QuranReadingPage.dart';
import 'SuraDetailsContainer.dart';

class searchquranpage extends StatelessWidget {
  final List<Map<String, String>> surahs = qurandata().quranSurahs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.Scaffoldcolor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Appimages.Quranbackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 60, left: 60),
                  child: Image.asset(Appimages.islamilogo, fit: BoxFit.fill),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Sura Name",
                    hintStyle: TextStyle(
                      color: Appcolors.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        Appimages.searchicon,
                        width: 20,
                        height: 20,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Appcolors.biegecolor),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Appcolors.biegecolor),
                    ),
                    contentPadding: EdgeInsets.all(14),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Most Recently ",
                  style: TextStyle(
                    color: Appcolors.whitecolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: surahs.length,
                    itemBuilder: BuildItemInList,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Suras List",
                  style: TextStyle(
                    color: Appcolors.whitecolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: surahs.length,
                  itemBuilder: BuildItemInList2,
                  separatorBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 1,
                        color: Appcolors.whitecolor,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  MostRecentlyContainer MapMostRecent(Map<String, String> sura) =>
      MostRecentlyContainer(
        SuraNameInEnglish: sura["name"]!,
        SuraNameInArabic: sura["arabic_name"]!,
        NumberOfVerses: sura["number_of_verses"]!,
      );

  MostRecentlyContainer BuildItemInList(BuildContext context, int index) =>
      MapMostRecent(surahs[index]);

  Suradetailscontainer MapSurshDetails(Map<String, String> sura, int index) =>
      Suradetailscontainer(
        EnglishName: sura["name"]!,
        ArabicName: sura["arabic_name"]!,
        Verses: sura["number_of_verses"]!,
        surahnumber: index + 1,
      );

  Widget BuildItemInList2(BuildContext context, int index) {
    final sura = surahs[index];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => quranreadingpage(
                  ENSuraTitle: sura["name"]!,
                  ARSuraTitle: sura["arabic_name"]!,
                ),
          ),
        );
      },
      child: Suradetailscontainer(
        EnglishName: sura["name"]!,
        ArabicName: sura["arabic_name"]!,
        Verses: sura["number_of_verses"]!,
        surahnumber: index + 1,
      ),
    );
  }
}
