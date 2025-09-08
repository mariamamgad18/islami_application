import 'package:flutter/material.dart';

class RotateImages extends StatelessWidget {
  final double angle;

  RotateImages({required this.angle});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Image.asset("assets/images/SebhaBody 1.png"),
    );
  }
}
