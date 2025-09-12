import 'package:flutter/cupertino.dart';
import 'package:islami/utils/AppColors.dart';

class selectedcontainer extends StatelessWidget {
  String iconimage;

  selectedcontainer({required this.iconimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: Appcolors.semiblackcolor,
      ),
      child: Image.asset(iconimage, height: 30, color: Appcolors.whitecolor),
    );
  }
}
