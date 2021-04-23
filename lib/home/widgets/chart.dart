
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
            height: 80,
            width: 80,
            child: CircularProgressIndicator(
              strokeWidth: 8,
              backgroundColor: AppColors.chartSecondary,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              value: 0,
            )),
        Text('0%', style: AppTextStyles.heading, textAlign: TextAlign.center,)
      ],
    );
  }
}
