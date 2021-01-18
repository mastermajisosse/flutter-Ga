import 'package:anime_game/utils/mystyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  rich(txt1, txt2) => RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: txt1, // 'Easy ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "\n" + txt2,
              style: TextStyle(
                color: Mystyle.txtcolo,
                fontSize: 12.0,
              ),
            ), // 'i watch some anime'),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            Text(
              'Select Difficulty',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: Mystyle.cardd(),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: rich("Easy ", "i watch some anime"),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: Mystyle.cardd(),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: rich("Medium ", "i watch a lot of anime"),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: Mystyle.cardd(),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: rich("Hard ", "i'm an Otaku"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
