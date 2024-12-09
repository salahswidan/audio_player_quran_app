import 'package:audio_player_app/controller/home_page_controlller.dart';
import 'package:audio_player_app/features/play_soura/widgets/custom_app_bar_play_soura_screen.dart';
import 'package:audio_player_app/features/play_soura/widgets/custom_botton_controller_play_soura.dart';

import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../widgets/custom_soura_details_play_screen.dart';
import '../widgets/custom_timing_widget.dart';
import '../widgets/custom_tools_2_play_soura.dart';
import '../widgets/custom_tools_play_soura.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({
    super.key,
  });
  //final SouraModelsouraModel;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
        extendBodyBehindAppBar:
            true, // to make the background color cover the app bar
        appBar: CustomAppBarPlaySouraScreen(
          onPressed: () {
            HomePageControlller.naviagtorToPop(context);
          },
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0.20, -0.98),
                  end: Alignment(-0.20, 0.98),
                  colors: [
                ColorManagers.kPrimaryColor,
                ColorManagers.kDarkBlueeColor
              ])),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    index.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  const CustomSouraDetailsPlayScreen(),
                  const SizedBox(
                    height: 29,
                  ),
                  CustomBottonControllerPlaySoura(
                    value: 0.6,
                    onChange: (value) {},
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.0),
                    child: CustomTimingWidget(),
                  ),
                  const CustomToolsPlaySoura(),
                  const CustomTools2PlaySoura(),
                ],
              ),
            ),
          ),
        ));
  }
}
