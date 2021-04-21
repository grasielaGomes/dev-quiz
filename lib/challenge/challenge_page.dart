import 'package:dev_quiz/challenge/widgets/question_indicator.dart';
import 'package:dev_quiz/challenge/widgets/question_title.dart';
import 'package:dev_quiz/challenge/widgets/quiz_answer.dart';
import 'package:dev_quiz/core/app_responsive.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive _responsive = Responsive.of(context);
    return Scaffold(
      appBar: QuestionIndicator(height: _responsive.heightPercent(10)),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: _responsive.widthPercent(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionTitle(title: 'O que o Flutter faz em sua totalidade?'),
            SizedBox(height: _responsive.heightPercent(5)),
            QuizAnswer(question: 'Kit de desenvolvimento de interface de usuário', isSelected: true, isRight: true,),
            QuizAnswer(question: 'Kit de desenvolvimento de interface de usuário'),
            QuizAnswer(question: 'Kit de desenvolvimento de interface de usuário'),
            QuizAnswer(question: 'Kit de desenvolvimento de interface de usuário')
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: _responsive.heightPercent(10),
        color: Colors.lightGreen,
      ),
    );
  }
}
