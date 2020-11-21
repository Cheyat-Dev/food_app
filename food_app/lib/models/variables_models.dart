import 'package:flutter/material.dart';

TextStyle headStyle = new TextStyle(
  fontFamily: 'BigShoulders',
  fontSize: 35.0,
  color: mainTheme.fontColor,
);

CustomThemeData mainTheme = new CustomThemeData(
    primaryColor: Color(0xffFFE66D),
    accentColor: Color(0xff343434),
    fontColor: Color(0xffF7FFF7));

class CustomThemeData {
  final Color primaryColor;
  final Color accentColor;
  final Color fontColor;

  CustomThemeData({this.primaryColor, this.accentColor, this.fontColor});
}
