import 'package:anime_game/uiscreen/menu.dart';
import 'package:anime_game/uiscreen/statescreen.dart';
import 'package:anime_game/uiscreen/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utils/mystyle.dart';
import 'utils/route_genetator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme:
          ThemeData(fontFamily: 'Tajawal', primaryColor: Mystyle.primarycolo),
      // home: Menu(),
      initialRoute: '/game1',
      onGenerateRoute: RoutGenerator.generateRout,
      debugShowCheckedModeBanner: false,
    );
  }
}
