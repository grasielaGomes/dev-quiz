import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/custom_linear_indicator.dart';
import 'package:flutter/material.dart';

class QuestionIndicator extends StatelessWidget implements PreferredSizeWidget{
  final double height;

  const QuestionIndicator({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height * .8),
      padding: EdgeInsets.symmetric(horizontal: height * .2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Questão 04', style: AppTextStyles.body),
              Text('de 10', style: AppTextStyles.body,)
            ]
          ),
          SizedBox(height: height * .2),
          CustomLinearIndicator(value: 0.7)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
