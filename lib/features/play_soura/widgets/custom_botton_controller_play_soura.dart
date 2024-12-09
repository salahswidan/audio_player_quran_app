import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';

class CustomBottonControllerPlaySoura extends StatelessWidget {
  const CustomBottonControllerPlaySoura({
    super.key,
    required this.onChange,
    required this.value,
  });
  final ValueChanged<double> onChange;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
                "assets/images/controllers_button_music_image/random.png"),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: [
                        ColorManagers.klightWhiteColor,
                        ColorManagers.kthridPrimaryColor,
                      ])),
              child: Image.asset(
                  "assets/images/controllers_button_music_image/back.png"),
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: ColorManagers.klightWhiteColor,
              child: Image.asset(
                  "assets/images/controllers_button_music_image/pause.png"),
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: [
                        Color(0xffB1AFE9),
                        ColorManagers.kthridPrimaryColor,
                      ])),
              child: Image.asset(
                  "assets/images/controllers_button_music_image/next.png"),
            ),
            Image.asset(
                "assets/images/controllers_button_music_image/loop.png"),
          ],
        ),
        Slider(
        
          value: value,
          onChanged: onChange,
          activeColor: ColorManagers.klightWhiteColor,
          
          
        )
      ],
    );
  }
}
