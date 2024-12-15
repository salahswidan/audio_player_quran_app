import 'dart:async';

import 'package:flutter/material.dart';

import '../core/resourses/routes_managers.dart';

class HomePageControlller {
  bool tappedOnSearchTextField = false;
  late StreamController<bool> tappedStatusSearchStreamController;
  late Sink<bool> tappedStatusSearchInputData;
  late Stream<bool> tappedStatusSearchOutputData;

  late StreamController<bool> closeStatusSearchStreamController;
  late Sink<bool> closeStatusSearchInputData;
  late Stream<bool> closeStatusSearchOutputData;
  HomePageControlller() {
    tappedStatusSearchStreamController = StreamController();
    tappedStatusSearchInputData = tappedStatusSearchStreamController.sink;
    tappedStatusSearchOutputData = tappedStatusSearchStreamController.stream;
    tappedStatusSearchInputData.add(tappedOnSearchTextField);

    closeStatusSearchStreamController = StreamController();
    closeStatusSearchInputData = closeStatusSearchStreamController.sink;
    closeStatusSearchOutputData = closeStatusSearchStreamController.stream;
    closeStatusSearchInputData.add(tappedOnSearchTextField);
  }
  static void naviagtorToPlaySouraScreen(
      {required BuildContext context, required int index}) {
    Navigator.pushNamed(context, RouteNames.kPlaySouraScreen, arguments: index);
  }

  static void naviagtorToPop(BuildContext context) {
    Navigator.pop(context);
  }

  void dispose() {
    tappedStatusSearchInputData.close();
    tappedStatusSearchStreamController.close();
  }

  void onTapSearchTextField() {
    tappedOnSearchTextField = true;
    tappedStatusSearchInputData.add(tappedOnSearchTextField);
    closeStatusSearchInputData.add(tappedOnSearchTextField);
  }

  void onTapOutsideSearchTextField() {
    tappedOnSearchTextField = false;
    tappedStatusSearchInputData.add(tappedOnSearchTextField);
        closeStatusSearchInputData.add(tappedOnSearchTextField);

    FocusManager.instance.primaryFocus?.unfocus();
  }
}
