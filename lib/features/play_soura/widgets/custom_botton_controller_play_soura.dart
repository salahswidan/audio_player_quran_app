import 'dart:async';
import 'package:flutter/material.dart';
import '../../../core/resourses/color_managers.dart';

class CustomBottonControllerPlaySoura extends StatelessWidget {
  const CustomBottonControllerPlaySoura({
    super.key,
     required this.onChangedSlider,
    // required this.value,
    required this.onStop,
    required this.playStatusOutputData,
    required this.audioTime, required this.durationNowOutputData, required this.sliderValueOutputData,
  });
   final ValueChanged<double> onChangedSlider;
  // final double value;
  final GestureTapCallback onStop;
  final Stream playStatusOutputData;
  final String audioTime;
  final Stream<String> durationNowOutputData;
  final Stream<double> sliderValueOutputData;


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
                child: StreamBuilder(
                  stream: playStatusOutputData,
                  builder: (context, snapshot) => CircleAvatar(
                    radius: 30,
                    backgroundColor: ColorManagers.klightWhiteColor,
                    child: Image.asset(
                        width: 36,
                        height: 36,
                        snapshot.data == true
                            ? "assets/images/controllers_button_music_image/pause.png"
                            : "assets/images/controllers_button_music_image/play.png"),
                  ),
                )),
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
      StreamBuilder<double>
      (stream: sliderValueOutputData, builder: (context,snapshot)=> 
       Slider(
        
           value:snapshot.data == null ? 0: snapshot.data!.toDouble(),
           onChanged: onChangedSlider,
          activeColor: ColorManagers.klightWhiteColor,
        ),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             StreamBuilder<String>(
              stream: durationNowOutputData,
              builder: (context, snapshot) =>
              Text(
                snapshot.data.toString(),
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: ColorManagers.klightWhiteColor),
              ),),
              Text(
                audioTime,
             
               style: TextStyle(
                   fontSize: 12,
                   fontWeight: FontWeight.w500,
                   color: ColorManagers.klightWhiteColor),
                           ),
            ],
          ),
        ),
      ],
    );
  }
}
