import 'package:anime_game/uiscreen/gameplay1/footer_sc.dart';
import 'package:anime_game/utils/mystyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GamePlayOne extends StatefulWidget {
  @override
  _GamePlayOneState createState() => _GamePlayOneState();
}

class _GamePlayOneState extends State<GamePlayOne>
    with TickerProviderStateMixin {
  int x = 430;
  List<String> images = [
    "assets/logo.jpg",
    "assets/logo.jpg",
    "assets/logo.jpg",
    "assets/logo.jpg",
    // "assets/sasuke.jpg",
    // "assets/temari.png",
    // "assets/test3.png",
    // "assets/test4.jpg",
  ];

  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  // List<Animation<double>> positionAnim;
  Animation positionAnim;
  Animation positionAnim1;
  Animation positionAnim2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    _controller1 = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    _controller2 = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    positionAnim = Tween<double>(begin: 0.0, end: 75).animate(_controller);

    positionAnim1 = Tween<double>(begin: 0.0, end: 75).animate(_controller1);

    positionAnim2 = Tween<double>(begin: 0.0, end: 75).animate(_controller2);
    _controller.forward().whenComplete(
          () => _controller1.forward().whenComplete(
            () {
              _controller2.forward().then((value) {
                print("done");
                lose();
              });
            },
          ),
        );
  }

  lose() {
    setState(() {
      score--;
      hearts--;
    });
  }

  int hearts = 5;
  int qst = 04;
  int total = 60;
  int level = 3;
  double time = 20;
  int score = 407;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
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
                                Mystyle.addingzero(qst),
                                style: Mystyle.greyTextStyle,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "/",
                                style: Mystyle.greyTextStyle,
                              ),
                              SizedBox(width: 5),
                              Text(
                                Mystyle.addingzero(total),
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
                                Mystyle.addingzero(level),
                                style: Mystyle.greenTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                          children: List.generate(5, (index) {
                        if (index < hearts) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: FaIcon(
                              FontAwesomeIcons.solidHeart,
                              color: Mystyle.heartcolo,
                            ),
                          );
                        } else {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: FaIcon(
                              FontAwesomeIcons.solidHeart,
                              color: Mystyle.heartcolo2,
                            ),
                          );
                        }
                      })),
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
                                level.toString(),
                                style: Mystyle.greenTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              // true
                              //     ? Text(
                              //         "+5",
                              //         style: Mystyle.greenTextStyle,
                              //       )
                              //     : Container(),
                              SizedBox(width: 5),
                              Text(
                                score.toString(),
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
                  ),
                  SizedBox(height: 5),
                  AnimatedBuilder(
                      animation: _controller,
                      builder: (BuildContext context, Widget child) {
                        return Container(
                          width: 240,
                          // color: Colors.amber,
                          alignment: Alignment.center,
                          child: Stack(
                            // alignment: Alignment.center,

                            children: [
                              timerwidget(greyish: true),
                              timerwidget(),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),
            SizedBox(height: 15),
            Divider(
              color: Mystyle.heartcolo2,
              height: 1,
              thickness: 2,
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "sasuke",
                    style: Mystyle.titlebodyStyle,
                  ),
                  SizedBox(height: ScreenUtil().setHeight(100)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      caro(images[0], () {
                        print("object");
                        if (images[0].contains("sasuke")) {
                          print("0");
                        } else {
                          lose();
                        }
                      }),
                      caro(images[1], () {
                        if (images[1].contains("sasuke")) {
                          print("1");
                        } else {
                          lose();
                        }
                        print("object");
                      }),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      caro(images[2], () {
                        print("object");
                        if (images[2].contains("sasuke")) {
                          print("2");
                        } else {
                          lose();
                        }
                      }),
                      caro(images[3], () {
                        print("object");
                        if (images[3].contains("sasuke")) {
                          print("3");
                        } else {
                          lose();
                        }
                      }),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(),
            ),
          ],
        ),
        floatingActionButton: FootGame(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  caro(img, Function f) {
    return InkWell(
      onTap: f,
      child: Container(
        width: ScreenUtil().setWidth(x),
        height: ScreenUtil().setWidth(x),
        decoration: Mystyle.roundAnsDec(img),
      ),
    );
  }

  timerwidget({bool greyish = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        3,
        (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              width: greyish
                  ? 75
                  : index == 0
                      ? positionAnim.value
                      : index == 1
                          ? positionAnim1.value
                          : index == 2 ? positionAnim2.value : 0,
              height: ScreenUtil().setHeight(20),
              decoration: BoxDecoration(
                color: greyish ? Mystyle.heartcolo2 : Mystyle.secondrycolo,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          );
        },
      ),
    );
  }
}
