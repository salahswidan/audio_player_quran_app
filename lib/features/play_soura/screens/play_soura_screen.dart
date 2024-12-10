import 'package:audio_player_app/controller/home_page_controlller.dart';
import 'package:audio_player_app/controller/play_music_controller.dart';
import 'package:audio_player_app/core/resourses/constants_value.dart';
import 'package:audio_player_app/features/play_soura/widgets/custom_app_bar_play_soura_screen.dart';
import 'package:audio_player_app/features/play_soura/widgets/custom_botton_controller_play_soura.dart';
import 'package:audio_player_app/models/soura_model.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../widgets/custom_soura_details_play_screen.dart';
import '../widgets/custom_timing_widget.dart';
import '../widgets/custom_tools_2_play_soura.dart';
import '../widgets/custom_tools_play_soura.dart';

class PlayMusicScreen extends StatefulWidget {
  PlayMusicScreen({
    super.key,
  });

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  late int index;
  late PlayMusicController _playMusicController;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    index = ModalRoute.of(context)!.settings.arguments as int;
    _playMusicController = PlayMusicController(index);
    _playMusicController.play();
  }

  @override



  void dispose() {
    _playMusicController.disposeAudio();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar:
            true, //! to make the background color cover the app bar
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
                  Spacer(),
                  CustomSouraDetailsPlayScreen(
                       souraModel: ConstantsValue.listQuarn[index],
                      ),
                  const SizedBox(
                    height: 29,
                  ),
                  CustomBottonControllerPlaySoura(
                    // pathSoura: souraModel.pathSoura,
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
