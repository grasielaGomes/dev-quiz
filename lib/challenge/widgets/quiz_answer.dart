
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizAnswer extends StatelessWidget {
  final String question;
  final bool isRight;
  final bool isSelected;

  const QuizAnswer({required this.question, this.isRight = false, this.isSelected = false});

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: isSelected ? _selectedBorderCardRight : AppColors.border)
      ),
      child: Row(
        children: [
          Flexible(child: Text(question, style: isSelected ? _selectedTextStyleRight : AppTextStyles.body)),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                color: isSelected ? _selectedColorRight : AppColors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: isSelected ? _selectedBorderRight : AppColors.border)
            ),
            child: Icon(isSelected ? _selectedIconRight : null, color: AppColors.border, size: 16,),
          )
        ],
      ),
    );
  }
}
