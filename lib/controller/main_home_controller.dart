import 'package:audio_player_app/features/main_home/screens/home_page.dart';
import 'package:flutter/material.dart';

class MainHomeController {
  static List<Icon> HomeIcon = [
    Icon(Icons.align_horizontal_left_outlined),
    Icon(Icons.home),
    Icon(Icons.heart_broken),
    Icon(Icons.list),
    Icon(Icons.settings),
  ];

  static List<Widget> HomePages = [
    Scaffold(
      body: Center(
        child: Text("align_horizontal_left_outlined"),
      ),
    ),
    HomePage(),

    Scaffold(
      body: Center(
        child: Text("haert"),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("list"),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("setting"),
      ),
    ),
  ];
}
