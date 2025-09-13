import 'package:flutter/material.dart';
import 'package:islami/utils/AppColors.dart';

import '../../utils/AppImages.dart';

class quranreadingpage extends StatelessWidget {
  String ENSuraTitle;
  String ARSuraTitle;
  String Content;

  quranreadingpage({
    required this.ENSuraTitle,
    required this.ARSuraTitle,
    this.Content =
        "[1] بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ [2] الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ [3] الرَّحْمَنِ الرَّحِيمِ [4] مَالِكِ يَوْمِ الدِّينِ [5] إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ [6] اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ [7] صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.Scaffoldcolor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Appimages.Surareadingpage),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Appcolors.biegecolor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 90),

                Text(
                  ENSuraTitle,
                  style: TextStyle(
                    color: Appcolors.biegecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 17),

            Text(
              ARSuraTitle,
              style: TextStyle(
                color: Appcolors.biegecolor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              Content,
              style: TextStyle(
                color: Appcolors.biegecolor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
