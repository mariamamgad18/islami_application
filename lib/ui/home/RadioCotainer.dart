import 'package:flutter/material.dart';
import 'package:islami/utils/AppColors.dart';
import 'package:islami/utils/AppImages.dart';

class Radiocotainer extends StatefulWidget {
  final String text;

  Radiocotainer({required this.text});

  @override
  State<Radiocotainer> createState() => _RadiocotainerState();
}

class _RadiocotainerState extends State<Radiocotainer> {
  bool isPaused = false;
  bool isMuted = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
      child: Container(
        width: 390,
        height: 133,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Appcolors.biegecolor,
        ),
        child: Stack(
          children: [
            Image.asset(
              isPaused ? Appimages.resumeimage : Appimages.pauseimage,
              width: 400,
              height: 133,
              fit: BoxFit.cover,
            ),

            Column(
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    color: Appcolors.blackcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isPaused = !isPaused;
                        });
                      },
                      icon: Icon(
                        isPaused ? Icons.pause : Icons.play_arrow,
                        color: Appcolors.blackcolor,
                      ),
                      iconSize: 40,
                    ),
                    IconButton(
                      icon: Icon(isMuted ? Icons.volume_off : Icons.volume_up),
                      color: Appcolors.blackcolor,
                      iconSize: 40,
                      onPressed: () {
                        setState(() {
                          isMuted = !isMuted;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
