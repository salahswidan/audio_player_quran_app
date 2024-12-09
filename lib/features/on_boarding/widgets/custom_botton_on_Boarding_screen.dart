import 'package:audio_player_app/controller/on_boarding_controller.dart';
import 'package:audio_player_app/core/resourses/color_managers.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/routes_managers.dart';

class CustomBottonOnBoardingScreen extends StatelessWidget {
  const CustomBottonOnBoardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        OnBoardingController.navigatorToHomeScreen(context: context);
      },
      child: Container(
          alignment: Alignment.center,
          width: 171,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border(top: BorderSide(color: Colors.white, width: 2)),
              gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: [
                    ColorManagers.klightWhite3Color,
                    ColorManagers.klightWhite2Color
                  ])),
          child: Text(
            "Get Started",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
