
import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';

class CustomLogoSplashScreen extends StatelessWidget {
  const CustomLogoSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
            height: 150,
            width: 150,
          ),
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.20, -0.98),
              end: Alignment(-0.20, 0.98),
              colors: [
                ColorManagers.kPrimaryColor,
                ColorManagers.kSecondaryColor
              ]),
        ));
  }
}