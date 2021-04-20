import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/app_bar2.dart';
import 'package:dev_quiz/home/widgets/level_button.dart';
import 'package:dev_quiz/home/widgets/quiz_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBarWidget2(height: responsive.heightPercent(24)),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: responsive.widthPercent(5)),
        child: Column(
          children: [
            Container(
              height: responsive.heightPercent(7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButton.easy(),
                  LevelButton.medium(),
                  LevelButton.hard(),
                  LevelButton.expert(),
                ],
              ),
            ),
            Expanded(
                child: GridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    QuizCard(),
                    QuizCard(),
                    QuizCard()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
