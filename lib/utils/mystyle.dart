import 'package:flutter/material.dart';

class Mystyle {
  static const Color primarycolo = Color(0xFF2addb5); // #2addb5
  static const Color secondrycolo = Color(0xFF6658ff); // #6658ff
  static const Color heartcolo = Color(0xFFeb6468); // #eb6468
  static const Color heartcolo2 = Color(0xFFebeff2); // #ebeff2
  static const Color greycolo = Color(0xFFbacedf); // #bacedf
  static const Color txtcolo = Color(0xFF485892); // #485892

  static const String primaryfont = "Tajawal";

  // ----------------------
  // textstyle

  static TextStyle titleTextStyle = TextStyle(
    color: secondrycolo,
    fontFamily: primaryfont,
    fontWeight: FontWeight.w800,
    fontSize: 32,
  );

  static TextStyle greyTextStyle = TextStyle(
    color: greycolo,
    fontFamily: primaryfont,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static TextStyle greenTextStyle = TextStyle(
    color: primarycolo,
    fontFamily: primaryfont,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static TextStyle blueTextStyle = TextStyle(
    color: secondrycolo,
    fontFamily: primaryfont,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  // ----------------------
  // Decoration

  static circleDecotation() {
    return BoxDecoration(
      color: Mystyle.primarycolo,
      shape: BoxShape.circle,
    );
  }
}
