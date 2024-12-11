import 'package:audio_player_app/controller/home_page_controlller.dart';
import 'package:audio_player_app/controller/play_music_controller.dart';
import 'package:audio_player_app/core/resourses/constants_value.dart';
import 'package:audio_player_app/features/play_soura/widgets/custom_app_bar_play_soura_screen.dart';
import 'package:audio_player_app/features/play_soura/widgets/custom_botton_controller_play_soura.dart';
import 'package:flutter/material.dart';
import '../../../core/resourses/color_managers.dart';
import '../widgets/custom_soura_details_play_screen.dart';
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
    // _playMusicController.play();
  }

  @override
  void dispose() {
    // _playMusicController.disposeAudio();
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
        body: FutureBuilder(
          future: _playMusicController.play(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              return Container(
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
                          audioTime: _playMusicController.transferDurationToMinuteAndSecond(snapshot.data),
                          playStatusOutputData:
                              _playMusicController.playStatusOutputData,
                          onStop: () {
                            _playMusicController.changePlayStatus();
                          },
                          value: 0.6,
                          onChange: (value) {},
                        ),
                        const CustomToolsPlaySoura(),
                        const CustomTools2PlaySoura(),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: Text("error"),
              );
            }
          },
        ));
  }
}
