import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/widgets/custom_linear_indicator.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text('Gerenciamento de Estado',
              style: AppTextStyles.heading15),
          Row(
            children: [
              Text('3 de 10',
                  style: AppTextStyles.body11),
              SizedBox(width: 10),
              Flexible(
                child: CustomLinearIndicator(value: 0.3),
              )
            ],
          )
        ],
      ),
    );
  }
}
