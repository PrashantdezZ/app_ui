import 'package:app_ui/Screens/detailScreen.dart';
import 'package:app_ui/Screens/homeFood.dart';
import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';

import 'Screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.white,
        ),

      home:  HomeFood(),
      );
  }
}


