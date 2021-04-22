
import 'package:dev_quiz/home/home_page.dart';
import 'package:dev_quiz/score/score_page.dart';
import 'package:dev_quiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      initialRoute: '/home',
      routes: {
        '/': (_) => SplashPage(),
        '/home': (_) => HomePage(),
        '/score': (_) => ScorePage(),
      },
    );
  }
}