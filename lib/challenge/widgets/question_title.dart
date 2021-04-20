import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String title;

  QuestionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Text(title, style: AppTextStyles.heading,),
    );
  }
}
