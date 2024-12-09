import 'package:audio_player_app/core/resourses/color_managers.dart';
import 'package:flutter/material.dart';

import '../../../controller/main_home_controller.dart';

class CustomBottomNavBarMainHomePage extends StatelessWidget {
  const CustomBottomNavBarMainHomePage({
    super.key,
    required this.onTap,
    required this.index,
  });
  final ValueChanged<int> onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorManagers.kthridPrimaryColor,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        onTap: onTap,
        type: BottomNavigationBarType.fixed, //! to show more tha 3 icon
        backgroundColor: Color(0xff261F44),
        items: [
          for (int i = 0; i < MainHomeController.HomeIcon.length; i++)
            BottomNavigationBarItem(
                icon: MainHomeController.HomeIcon[i], label: '')
        ]);
  }
}
