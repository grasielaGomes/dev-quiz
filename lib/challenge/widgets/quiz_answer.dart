
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';


class QuizAnswer extends StatelessWidget {
  final String title;
  final bool isRight;
  final Color color;
  final Color borderColor;
  final IconData? icon;
  final TextStyle style;
  final VoidCallback onTap;

  const QuizAnswer({
    required this.title,
    this.isRight = false,
    this.color = AppColors.white,
    this.borderColor = AppColors.border,
    this.icon,
    required this.style,
    required this.onTap
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text(title, style: style)),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: borderColor)
              ),
              child: Icon(icon, color: borderColor, size: 16,),
            )
          ],
        ),
      ),
    );
  }
}
