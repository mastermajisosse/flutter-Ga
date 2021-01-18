import 'package:anime_game/uiscreen/statescreen.dart';
import 'package:anime_game/utils/mystyle.dart';
import 'package:flutter/material.dart';

class FootGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GameOver(status: "paused"),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100],
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Mystyle.greycolo, width: 3),
            borderRadius: BorderRadius.circular(100),
          ),
          padding: EdgeInsets.all(8),
          child: Icon(Icons.pause, size: 24, color: Colors.blueGrey),
        ),
      ),
    );
  }
}
