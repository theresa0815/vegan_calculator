import 'package:flutter/material.dart';

ThemeData myTheme (){
  TextTheme myTextTheme(TextTheme base) {
    return base.copyWith(
      //numbers:
      display1: base.display1.copyWith(
        fontFamily: 'Roboto',
        letterSpacing: 10,
        color: Color.fromRGBO(241,90,36, 1),
        fontSize: 50,
      ),
      //subtitle
      display2: base.display2.copyWith(
        fontFamily: 'Roboto',
        fontSize: 20,
        letterSpacing: 10,
        color: Colors.black,
      ),
      // black headlines
      display4: base.display4.copyWith(
        fontSize: 12,
        letterSpacing: 3,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
  final ThemeData base=ThemeData.light(
  );
  return base.copyWith(
    textTheme: myTextTheme(base.textTheme),
    accentColor: Color.fromRGBO(241,90,36, 1),
  );
}