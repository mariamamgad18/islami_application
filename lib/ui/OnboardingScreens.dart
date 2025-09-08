import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

import 'home/HomeScreen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => Homescreen()));
  }

  PageViewModel buildPage(String centerImage, String text1, String text2) {
    return PageViewModel(
      decoration: const PageDecoration(pageColor: Appcolors.blackcolor),
      titleWidget: Column(
        children: [
          Image.asset(Appimages.islamilogo, height: 100),
          const SizedBox(height: 20),
          Image.asset(centerImage, height: 200),
          const SizedBox(height: 30),
          Text(
            text1,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Appcolors.biegecolor,
            ),
            textAlign: TextAlign.center,
          ),

          Text(
            text2,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Appcolors.biegecolor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      bodyWidget: const SizedBox.shrink(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Appcolors.blackcolor,
      pages: [
        buildPage(Appimages.onboarding1, "Welcome To Islmi App", ""),
        buildPage(
          Appimages.onboarding2,
          "Welcome To Islami",
          "We Are Very Excited To Have You In Our Community",
        ),
        buildPage(
          Appimages.onboarding3,
          "Reading the Quran",
          "Read, and your Lord is the Most Generous",
        ),
        buildPage(
          Appimages.onboarding4,
          "Bearish",
          "Praise the name of your Lord, the Most High",
        ),
        buildPage(
          Appimages.onboarding5,
          "Holy Quran Radio",
          "You can listen to the Holy Quran Radio through the application for free and easily",
        ),
      ],
      showSkipButton: false,
      showNextButton: true,
      next: const Text("Next", style: TextStyle(color: Appcolors.biegecolor)),
      back: const Text("Back", style: TextStyle(color: Appcolors.biegecolor)),
      showBackButton: true,
      done: const Text("Finish", style: TextStyle(color: Appcolors.biegecolor)),
      onDone: () => _onIntroEnd(context),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Appcolors.biegecolor,
        activeSize: Size(22.0, 10.0),
        activeColor: Appcolors.biegecolor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
