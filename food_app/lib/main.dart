import 'package:flutter/material.dart';
import 'package:food_app/models/variables_models.dart';
import 'Pages/home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: mainTheme,
    home: Home(),
  ));
}
