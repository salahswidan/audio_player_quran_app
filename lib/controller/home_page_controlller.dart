import 'dart:async';
import 'package:audio_player_app/core/resourses/constants_value.dart';
import 'package:audio_player_app/models/soura_model.dart';
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

  late StreamController<List<SouraModel>>listSearchOutPutDataStreamController;
  late Sink<List<SouraModel>> listSearchOutPutDataInputData;
  late Stream<List<SouraModel>> listSearchOutPutDataOutputData;

  List<SouraModel> listSearchModel = [];
  HomePageControlller() {
    tappedStatusSearchStreamController = StreamController();
    tappedStatusSearchInputData = tappedStatusSearchStreamController.sink;
    tappedStatusSearchOutputData = tappedStatusSearchStreamController.stream;
    tappedStatusSearchInputData.add(tappedOnSearchTextField);

    closeStatusSearchStreamController = StreamController();
    closeStatusSearchInputData = closeStatusSearchStreamController.sink;
    closeStatusSearchOutputData = closeStatusSearchStreamController.stream;
    closeStatusSearchInputData.add(tappedOnSearchTextField);

     listSearchOutPutDataStreamController = StreamController();
    listSearchOutPutDataInputData = listSearchOutPutDataStreamController.sink;
    listSearchOutPutDataOutputData = listSearchOutPutDataStreamController.stream;
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
    listSearchOutPutDataInputData.add(listSearchModel);

    FocusManager.instance.primaryFocus?.unfocus();
  } 

  void searchAboutSong(String value) {
    List<SouraModel> a = ConstantsValue.listQuarn
        .where((element) => element.soura.toLowerCase().contains(value))
        .toList();
    listSearchModel.clear();
    listSearchModel = a;
        listSearchOutPutDataInputData.add(listSearchModel);

    // for (SouraModel s in a) print(s.reader);
  }
}
