import 'package:audio_player_app/core/resourses/routes_managers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
