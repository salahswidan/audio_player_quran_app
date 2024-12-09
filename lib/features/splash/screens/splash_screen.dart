import 'package:audio_player_app/controller/splash_controller.dart';
import 'package:audio_player_app/core/resourses/color_managers.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/routes_managers.dart';
import '../widgets/custom_logo_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashController.navigatorToOnBoardingScreen(context: context);
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomLogoSplashScreen(),
    );
  }
}
