import 'package:audio_player_app/features/main_home/screens/main_home_screen.dart';
import 'package:audio_player_app/features/on_boarding/screens/on_boarding_screen.dart';
import 'package:audio_player_app/features/play_soura/screens/play_soura_screen.dart';
import 'package:flutter/material.dart';

import '../../features/splash/screens/splash_screen.dart';

class RoutesManagers {
  static Map<String, WidgetBuilder> routes = {
    RouteNames.kSplashScreen: (context) => const SplashScreen(),
    RouteNames.kOnBoardingScreen: (context) => const OnBoardingScreen(),
    RouteNames.kHomeScreen: (context) => const MainHomeScreen(),
    RouteNames.kPlaySouraScreen: (context) => const PlayMusicScreen(
      
    ),
  };
}

class RouteNames {
  static const String kSplashScreen = '/kSplashScreen';
  static const String kOnBoardingScreen = '/kOnBoardingScreen';
  static const String kHomeScreen = '/kHomeScreen';
  static const String kPlaySouraScreen = '/kPlaySouraScreen';

  // static const String home = '/home';
}
