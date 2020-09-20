import 'package:anime_game/utils/mystyle.dart';
import 'package:flutter/material.dart';

class GamePlayOne extends StatefulWidget {
  @override
  _GamePlayOneState createState() => _GamePlayOneState();
}

class _GamePlayOneState extends State<GamePlayOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "04",
                            style: Mystyle.greyTextStyle,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "/",
                            style: Mystyle.greyTextStyle,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "50",
                            style: Mystyle.greyTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.link,
                            color: Mystyle.primarycolo,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "07",
                            style: Mystyle.greenTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          children: List.generate(5, (index) {
                        if (true) {
                          return Icon(Icons.hearing);
                        } else {
                          return Icon(Icons.hearing);
                        }
                      })),
                      Row(
                        children: [
                          Icon(
                            Icons.link,
                            color: Mystyle.primarycolo,
                          ),
                          SizedBox(width: 5),
                          Text("07"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Level",
                            style: Mystyle.greyTextStyle,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "1",
                            style: Mystyle.greenTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          true
                              ? Text(
                                  "+5",
                                  style: Mystyle.greenTextStyle,
                                )
                              : Container(),
                          SizedBox(width: 5),
                          Text(
                            "407",
                            style: Mystyle.blueTextStyle,
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.link,
                            color: Mystyle.primarycolo,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: InkWell(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Mystyle.greycolo),
              borderRadius: BorderRadius.circular(100),
            ),
            padding: EdgeInsets.all(8),
            child: Icon(Icons.pause, size: 24),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
