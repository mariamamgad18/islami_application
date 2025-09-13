import 'package:flutter/material.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

import 'HadeethContainer.dart';
import 'HadeethData.dart';
import 'QuranReadingPage.dart';

class Hadeethpage extends StatelessWidget {
  final List<Map<String, String>> hadeeth = HadeethData().hadeethList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.Scaffoldcolor,
      body: Stack(
        children: [
          Image.asset(
            Appimages.hadeethbackground,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Column(
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
              Expanded(
                child: PageView.builder(
                  controller: PageController(
                    viewportFraction: 0.8, // 80% من عرض الشاشة
                  ),
                  itemCount: hadeeth.length,
                  itemBuilder: BuildItemInListHadeeth,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Hadeethcontainer MapHadeeth(Map<String, String> hadeeth) => Hadeethcontainer(
    TitleOfHadeeth: hadeeth["hadeethNameInArabic"]!,
    ContentOffHadeeth: hadeeth["hadeethContent"]!,
  );

  Widget BuildItemInListHadeeth(BuildContext context, int index) {
    final sura = hadeeth[index];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => quranreadingpage(
                  ENSuraTitle: sura["hadeethNameInEnglish"]!,
                  ARSuraTitle: sura["hadeethNameInArabic"]!,
                  Content: sura["hadeethContent"]!,
                ),
          ),
        );
      },
      child: MapHadeeth(sura),
    );
  }

  //
}
