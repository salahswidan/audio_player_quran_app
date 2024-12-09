import 'package:flutter/material.dart';

import '../core/resourses/routes_managers.dart';

class OnBoardingController {
  static void navigatorToHomeScreen({required BuildContext context}){
     Navigator.pushNamed(context, RouteNames.kHomeScreen);
  } 
}