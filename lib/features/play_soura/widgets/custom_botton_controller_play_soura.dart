import 'dart:async';

import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';

class CustomBottonControllerPlaySoura extends StatelessWidget {
  const CustomBottonControllerPlaySoura({
    super.key,
    required this.onChange,
    required this.value, required this.onStop, required this.playStatusOutputData,
   // required this.pathSoura,

  });
 // final SouraModel souraModel;
  final ValueChanged<double> onChange;
  final double value;
  final GestureTapCallback onStop;
  final Stream playStatusOutputData;
 // final String pathSoura;

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
            InkWell(
              onTap: onStop,
              child: StreamBuilder(stream: playStatusOutputData, builder: (context, snapshot) =>
              CircleAvatar(
                radius: 30,
                backgroundColor: ColorManagers.klightWhiteColor,
                child: Image.asset( snapshot.data == true?
                    "assets/images/controllers_button_music_image/pause.png" : "assets/images/controllers_button_music_image/play.png") ,
              ),
                
              )
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
