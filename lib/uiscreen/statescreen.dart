import 'package:anime_game/models/gamestate.dart';
import 'package:anime_game/utils/mystyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GameOver extends StatefulWidget {
  String status = "gameover"; // gameover"; // cleared , paused
  GameOver({this.status});
  @override
  _GameOverState createState() => _GameOverState();
}

class _GameOverState extends State<GameOver> {
  Gamestate gamestate;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gamestate = Gamestate().fstatus("cleared");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gamestate.colo,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "P",
                      style: Mystyle.ppTextStyle(gamestate.colo),
                    ),
                  ),
                  Text(
                    "Score",
                    style: Mystyle.ttTextStyle,
                  ),
                  Text(
                    "0",
                    style: Mystyle.whiteTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Text(
                  gamestate.title,
                  style: Mystyle.whiteTextStyle,
                ),
                SizedBox(height: 16),
                InkWell(
                  onTap: gamestate.fun[0],
                  child: Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130,
                          child: Text(
                            gamestate.buttext[0],
                            style: Mystyle.ppTextStyle(gamestate.colo)
                                .copyWith(fontSize: 24),
                          ),
                        ),
                        Icon(
                          gamestate.buticon[0],
                          color: gamestate.colo,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                InkWell(
                  onTap: gamestate.fun[1],
                  child: Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130,
                          child: Text(
                            gamestate.buttext[1],
                            style: Mystyle.ppTextStyle(gamestate.colo)
                                .copyWith(fontSize: 24),
                          ),
                        ),
                        Icon(
                          gamestate.buticon[1],
                          color: gamestate.colo,
                        )
                      ],
                    ),
                  ),
                ),
                gamestate.butnum == 3
                    ? Column(
                        children: [
                          SizedBox(height: 16),
                          InkWell(
                            onTap: gamestate.fun[2],
                            child: Container(
                              width: 250,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 130,
                                    child: Text(
                                      gamestate.buttext[2],
                                      style: Mystyle.ppTextStyle(gamestate.colo)
                                          .copyWith(fontSize: 24),
                                    ),
                                  ),
                                  Icon(
                                    gamestate.buticon[1],
                                    color: gamestate.colo,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
