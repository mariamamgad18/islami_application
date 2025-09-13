import 'package:flutter/material.dart';
import 'package:islami/utils/AppColors.dart';

import '../../utils/AppImages.dart';

class quranreadingpage extends StatelessWidget {
  String ENSuraTitle;
  String ARSuraTitle;

  quranreadingpage({required this.ENSuraTitle, required this.ARSuraTitle});

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
          ],
        ),
      ),
    );
  }
}
