import 'package:flutter/material.dart';
import 'package:islami/utils/AppImages.dart';

class RotateImages extends StatelessWidget {
  final double angle;

  RotateImages({required this.angle});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Image.asset(
        Appimages.sebhabody,
        width: 378.9999694824219,
        height: 460.0002746582031,
      ),
    );
  }
}
