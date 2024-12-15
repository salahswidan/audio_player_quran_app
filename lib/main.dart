import 'package:audio_player_app/controller/play_music_controller.dart';
import 'package:audio_player_app/core/resourses/routes_managers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    PlayMusicController playMusicController = PlayMusicController(0);
    playMusicController.disposeAudio();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "main",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.kSplashScreen,
      routes: RoutesManagers.routes,
    );
  }
}
