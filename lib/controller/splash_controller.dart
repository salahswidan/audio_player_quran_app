import 'package:flutter/material.dart';

import '../core/resourses/routes_managers.dart';

class SplashController {
 static void navigatorToOnBoardingScreen({required BuildContext context}){
      
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RouteNames.kOnBoardingScreen);
    });
  }
}