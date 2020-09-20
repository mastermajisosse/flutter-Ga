import 'package:anime_game/uiscreen/gameplayone_screen.dart';
import 'package:flutter/material.dart';

class RoutGenerator {
  static Route<dynamic> generateRout(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/game1':
        return MaterialPageRoute(builder: (_) => GamePlayOne());
      // case '/tabhome':
      //   return MaterialPageRoute(builder: (_) => TabsHome());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ErrorRoute'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
