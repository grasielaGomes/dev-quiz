import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class CustomLinearIndicator extends StatelessWidget {
  final double value;

  CustomLinearIndicator({required this.value});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
