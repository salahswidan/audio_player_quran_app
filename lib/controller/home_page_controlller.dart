import 'package:flutter/material.dart';

import '../core/resourses/routes_managers.dart';

class HomePageControlller {
  static void naviagtorToPlaySouraScreen(BuildContext context) {
    Navigator.pushNamed(context, RouteNames.kPlaySouraScreen);
  }
  static void naviagtorToPop(BuildContext context) {
            Navigator.pop(context);
  }
}
