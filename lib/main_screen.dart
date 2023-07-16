import 'package:flutter/material.dart';
import 'package:hand_cricket/home_screen.dart';
import 'package:hand_cricket/mid_screen.dart';
import 'package:hand_cricket/results.dart';
import 'package:hand_cricket/sys_choose.dart';
import 'package:hand_cricket/toss.dart';
import 'package:hand_cricket/user_bat.dart';
import 'package:hand_cricket/user_bowl.dart';
import 'dart:math';

import 'package:hand_cricket/user_choose.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  var activeScreen = 'home-screen';
  Widget? screen;
  int target = 9999, innings = 0;
  int userScore = 0, sysScore = 0;
  int dec = 0;
  final Random r = Random();
  void switchScreen(int data) {
    int temp = r.nextInt(2);
    if (temp == data) {
      setState(() {
        activeScreen = 'user-choose';
      });
    } else {
      setState(() {
        activeScreen = 'sys-choose';
      });
    }
  }

  void playScreen(int data) {
    setState(() {
      if (data == 0) {
        dec = 0;
        activeScreen = 'user-bowl';
      } else {
        dec = 1;
        activeScreen = 'user-bat';
      }
    });
  }

  void changeScreen(int tar, int data) {
    setState(() {
      target = tar;
      innings = 1;
      if (data == 0) {
        userScore = tar - 1;
        activeScreen = 'mid-screen';
      } else if (data == 1) {
        sysScore = tar - 1;
        activeScreen = 'mid-screen';
      } else {
        activeScreen = 'results-screen';
        if (data == 2) {
          userScore = tar;
        } else {
          sysScore = tar;
        }
      }
    });
  }

  void secondInnings() {
    setState(() {
      if (dec == 0) {
        activeScreen = 'user-bat';
      } else {
        activeScreen = 'user-bowl';
      }
    });
  }

  void playAgain() {
    setState(() {
      target = 9999;
      sysScore = 0;
      userScore = 0;
      innings = 0;
      activeScreen = 'toss-screen';
    });
  }

  @override
  Widget build(context) {
    if (activeScreen == 'toss-screen') {
      screen = Toss(switchScreen);
    } else if (activeScreen == 'user-choose') {
      screen = UserChoose(playScreen);
    } else if (activeScreen == 'sys-choose') {
      screen = SysChoose(playScreen);
    } else if (activeScreen == 'user-bat') {
      screen = UserBat(changeScreen, target, innings);
    } else if (activeScreen == 'user-bowl') {
      screen = UserBowl(changeScreen, target, innings);
    } else if (activeScreen == 'results-screen') {
      screen = ResultScreen(playAgain, userScore, sysScore, dec);
    } else if (activeScreen == 'home-screen') {
      screen = HomeScreen(playAgain);
    } else if (activeScreen == 'mid-screen') {
      screen = MidScreen(secondInnings, dec, target);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 6, 67, 235)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screen,
        ),
      ),
    );
  }
}
