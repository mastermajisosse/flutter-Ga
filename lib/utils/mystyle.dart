import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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

  static TextStyle titlebodyStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: txtcolo,
    fontSize: ScreenUtil().setSp(64),
  );

  static TextStyle titleTextStyle = TextStyle(
    color: secondrycolo,
    fontFamily: primaryfont,
    fontWeight: FontWeight.w800,
    fontSize: 32,
  );

  static TextStyle titleTextStyle2 = TextStyle(
    color: primarycolo,
    fontFamily: primaryfont,
    fontWeight: FontWeight.w800,
    fontSize: 44,
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

  static TextStyle ppTextStyle(colo) => TextStyle(
        color: colo,
        fontFamily: primaryfont,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );
  static TextStyle ttTextStyle = TextStyle(
    color: Colors.white.withOpacity(.4),
    fontFamily: primaryfont,
    fontWeight: FontWeight.bold,
    fontSize: 32,
  );

  static TextStyle whiteTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: primaryfont,
    fontWeight: FontWeight.bold,
    fontSize: 32,
  );

  // ----------------------
  // Decoration

  static circleDecotation() {
    return BoxDecoration(
      color: Mystyle.primarycolo,
      shape: BoxShape.circle,
    );
  }

  static cardd() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: Colors.white,
        width: 2,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[200],
          spreadRadius: 7,
          blurRadius: 10,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    );
  }

  static roundAnsDec(images) {
    return BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(18),
      border: Border.all(
        color: Colors.white,
        width: 5,
      ),
      image: DecorationImage(
        image: AssetImage(images),
        fit: BoxFit.cover,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[200],
          spreadRadius: 3,
          blurRadius: 4,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    );
  }
// -------------

  static loadingWidget() {
    return Center(
      child: SpinKitChasingDots(
        color: Colors.white,
      ),
    );
  }

  static mydivider() {
    return Container(
      width: ScreenUtil().setWidth(500),
      height: 1,
      decoration: BoxDecoration(
        color: Colors.black,
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.black,
            Colors.black,
            Colors.white,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
    );
  }

  // -------------

  static inputregular(hint, {icon}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      fillColor: Color(0xFF808286),
      suffixIcon: icon,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      // labelStyle: butTextStyle,
      // errorStyle: butTextStyle,
    );
  }

  static snack(scaffoldKey, ico, colo, txt) {
    scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(txt), //style: butTextStyle),
            Icon(ico),
          ],
        ),
        backgroundColor: colo,
      ),
    );
  }

  static diaglo(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: ScreenUtil().setHeight(500),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Mystyle.primarycolo,
                    size: 42,
                  ),
                  SizedBox(height: 10),
                  Text(
                    " تم الاضافة بنجاح",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: ScreenUtil().setWidth(400),
                    child: RaisedButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) {
                        //       return TabsHome(ind: 4);
                        //     },
                        //   ),
                        // );
                      },
                      child: Text(
                        "رجوع",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Mystyle.primarycolo,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // -------------
  static bool isNullEmptyOrFalse(Object o) =>
      o == null || false == o || "" == o;

  static bool isNullEmptyFalseOrZero(Object o) =>
      o == null || false == o || 0 == o || "" == o;

  //..........
  static addingzero(numb) {
    return (numb < 10 ? "0" : "") + numb.toString();
  }
}
