import 'package:flutter/material.dart';

import '../core/resourses/routes_managers.dart';

class HomePageControlller {
  static void naviagtorToPlaySouraScreen(
      { required BuildContext context, required int index}) {
    Navigator.pushNamed(context, RouteNames.kPlaySouraScreen,arguments: index);
  }

  static void naviagtorToPop(BuildContext context) {
    Navigator.pop(context);
  }
}
