
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/chart.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      height: responsive.heightPercent(12),
      padding: EdgeInsets.all(responsive.widthPercent(2)),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(responsive.heightPercent(1.5)),
        border: Border.all(color: AppColors.chartSecondary)
      ),
      child: Row(
        children: [
          ChartWidget(),
          SizedBox(width: responsive.widthPercent(2)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Vamos começar',
                  style: AppTextStyles.heading),
                Text('Complete os desafios e avance em conhecimento!',
                  style: AppTextStyles.body)
              ],
            ),
          )
        ],
      ),
    );
  }
}
