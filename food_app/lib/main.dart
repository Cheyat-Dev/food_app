import 'package:flutter/material.dart';
import 'Pages/home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xFFF2E3BC),
      accentColor: Color(0xFF96BBBB),
    ),
    home: Home(),
  ));
}