import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utils/mystyle.dart';
import 'utils/route_genetator.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   // statusBarBrightness: Brightness.dark
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(fontFamily: 'Tajawal', primaryColor: Mystyle.primarycolo),
      initialRoute: '/game1',
      onGenerateRoute: RoutGenerator.generateRout,
      debugShowCheckedModeBanner: false,
    );
  }
}
