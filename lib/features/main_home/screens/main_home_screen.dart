import 'package:audio_player_app/controller/main_home_controller.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_bottom_nav_bar_main_home_page.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainHomeController.HomePages[index],
      bottomNavigationBar: CustomBottomNavBarMainHomePage(
        index: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
    );
  }
}
