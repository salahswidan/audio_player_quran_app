import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../../splash/widgets/custom_logo_splash_screen.dart';
import '../widgets/custom_botton_on_Boarding_screen.dart';
import '../widgets/custom_sub_title_on_Boarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 111),
                Text(
                  textAlign: TextAlign.center,
                  "Find Your \n Favorite",
                  style: TextStyle(
                      fontFamily: "main",
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Music",
                  style: TextStyle(
                      fontFamily: "main",
                      color: ColorManagers.klightWhite2Color,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 11,
                ),
                CustomSubTitleOnBoarding(),
                SizedBox(
                  height: 38,
                ),
                CustomBottonOnBoardingScreen(),
                Expanded(
                    child: Image.asset(
                  "assets/images/onBoardingImage.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.20, -0.98),
                end: Alignment(-0.20, 0.98),
                colors: [
                  ColorManagers.kPrimaryColor,
                  ColorManagers.kSecondaryColor
                ]),
          )),
    );
  }
}
