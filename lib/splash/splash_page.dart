
import 'package:flutter/material.dart';
import 'package:dev_quiz/core/core.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacementNamed(context, '/home'));
        return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear
        ),
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}