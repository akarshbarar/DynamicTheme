import 'package:dynamictheme/KeysEnum.dart';
import 'package:flutter/material.dart';

enum MyKeys {LIGHT_MODE, NIGHT_MODE, DARK_MODE}

class MyThemes{

  static final ThemeData light=ThemeData.light();
  static final ThemeData night=ThemeData.dark();
  static final ThemeData  dark=ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
  );

  static ThemeData keyTheme(MyKeys obj){
    switch(obj){
      case MyKeys.LIGHT_MODE: return light;
      case MyKeys.NIGHT_MODE: return night;
      case MyKeys.DARK_MODE: return dark;
      default: return light;

    }
  }



}