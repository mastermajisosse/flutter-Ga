import 'package:anime_game/utils/mystyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Gamestate {
  String status; // = "gameover"; // cleared , paused
  String title;
  int butnum;
  List buticon;
  List<String> buttext;
  Color colo;
  List<Function> fun;

  Gamestate({
    this.title,
    this.butnum,
    this.buticon,
    this.buttext,
    this.colo,
    this.fun,
  });
  Gamestate fstatus(String name) {
    if (name == "gameover") {
      print("-----gameover");
      return Gamestate(
        title: "Game Over",
        butnum: 2,
        buticon: [
          FontAwesomeIcons.adjust,
          FontAwesomeIcons.home,
          Icons.ac_unit,
        ],
        buttext: ["New Game", "Menu", ""],
        colo: Mystyle.heartcolo,
        fun: [
          () => print("object"),
          () => print("object"),
          () => print("object"),
        ],
      );
    } else if (name == "cleared") {
      print("-----cleared");
      return Gamestate(
        title: "Cleared",
        butnum: 3,
        buticon: [
          Icons.navigate_next,
          FontAwesomeIcons.home,
          FontAwesomeIcons.doorClosed,
        ],
        buttext: ["Next Level", "Menu", "Quit"],
        colo: Mystyle.primarycolo,
        fun: [
          () => print("object"),
          () => print("object"),
          () => print("object"),
        ],
      );
    } else if (name == "paused") {
      print("-----paused");
      return Gamestate(
        title: "Paused",
        butnum: 3,
        buticon: [Icons.ac_unit, Icons.ac_unit, Icons.ac_unit],
        buttext: ["Continue", "New Game", "Quit"],
        colo: Mystyle.secondrycolo,
        fun: [
          () => print("object"),
          () => print("object"),
          () => print("object"),
        ],
      );
    }
  }
}
