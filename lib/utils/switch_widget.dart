import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;
  bool isSwitched = false;
  bool value = false;
  Color activeColor = Colors.lightBlue;
  Color disactivatColor = Colors.white70;

  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: value ? Alignment.centerRight : Alignment.centerLeft,
            end: value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (value == true) {
                _animationController.reverse();
              } else {
                _animationController.forward();
              }
              value = !value;
            });
          },
          child: Container(
            width: 70.0,
            height: 35.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _circleAnimation.value == Alignment.centerLeft
                    ? disactivatColor
                    : activeColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _circleAnimation.value == Alignment.centerRight
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                      )
                    : Container(),
                Align(
                  alignment: _circleAnimation.value,
                  child: Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                ),
                _circleAnimation.value == Alignment.centerLeft
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}
