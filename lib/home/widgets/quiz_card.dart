import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/widgets/custom_linear_indicator.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  final String title;
  final int totalQuestions;
  final int answeredQuestions;
  final VoidCallback onTap;


  QuizCard({
    required this.title,
    required this.totalQuestions,
    required this.answeredQuestions,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
          decoration: cardDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            Text(title, style: AppTextStyles.heading15),
            Row(
              children: [
                Text('$answeredQuestions de $totalQuestions',
                    style: AppTextStyles.body11),
                SizedBox(width: 10),
                Flexible(
                  child: CustomLinearIndicator(value: answeredQuestions / totalQuestions),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
