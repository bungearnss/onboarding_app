import 'package:flutter/material.dart';

import './utils/app_color.dart';
import './screen/Intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Intro Screen",
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 25,
            color: AppColors.titleColor,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 18,
            color: AppColors.subTitleColor,
            fontWeight: FontWeight.w400,
            wordSpacing: 1.2,
            height: 1.2,
          ),
          headline3: TextStyle(
            fontSize: 18,
            color: AppColors.titleColor,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const IntroScreen(),
    );
  }
}
