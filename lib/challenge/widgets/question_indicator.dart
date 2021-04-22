import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/custom_linear_indicator.dart';
import 'package:flutter/material.dart';

class QuestionIndicator extends StatelessWidget {
  final double height;
  final int currentPage;
  final int length;

  const QuestionIndicator({
    required this.height,
    required this.currentPage,
    required this.length
  });

  @override
  Widget build(BuildContext context) {
    double indicator = (currentPage + 1 / length);
    return Container(
      margin: EdgeInsets.only(top: height * .8),
      padding: EdgeInsets.symmetric(horizontal: height * .2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Questão ${currentPage + 1} de $length', style: AppTextStyles.body),
              GestureDetector(
                  child: Icon(Icons.close_rounded, color: AppColors.grey,),
                  onTap: () => Navigator.pop(context))
            ]
          ),
          SizedBox(height: height * .2),
          CustomLinearIndicator(value: indicator)
        ],
      ),
    );
  }
}
