import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/app_bar2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBarWidget2(height: responsive.heightPercent(25)),
    );
  }
}
