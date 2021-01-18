import 'dart:math';

import 'package:anime_game/uiscreen/menu.dart';
import 'package:anime_game/utils/mystyle.dart';
import 'package:flutter/material.dart';

class Splashs extends StatefulWidget {
  final double radius;
  final double dotRadius;
  String name;

  Splashs({this.radius = 50.0, this.dotRadius = 10.0, this.name = "GOtaku"});
  @override
  _SplashsState createState() => _SplashsState();
}

class _SplashsState extends State<Splashs> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation_rotation;
  Animation<double> animation_radius_in;
  Animation<double> animation_radius_out;

  double radius;
  double dotRadius;

  @override
  void initState() {
    super.initState();
    radius = widget.radius;
    dotRadius = widget.dotRadius;

    // Future.delayed(Duration(seconds: 5)).then((_) {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => Menu()),
    //   );
    // });

    controller = AnimationController(
        lowerBound: 0.0,
        upperBound: 1.0,
        duration: const Duration(milliseconds: 3000),
        vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      color: Mystyle.secondrycolo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            child: Image.asset(
              "assets/logog.png",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.name,
            style: Mystyle.titleTextStyle2,
          ),
          SizedBox(height: 50),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;

  Dot({this.radius, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
