import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRoundedButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color borderColor;
  final Color textColor;
  final VoidCallback onTap;


  CustomRoundedButton(
      {required this.label, required this.color, this.borderColor = AppColors.border, this.textColor = AppColors.white, required this.onTap});

  CustomRoundedButton.white({required this.label, required this.onTap})
      : this.color = AppColors.white,
        this.borderColor = AppColors.border,
        this.textColor = AppColors.lightGrey;

  CustomRoundedButton.green({required this.label, required this.onTap})
      : this.color = AppColors.darkGreen,
        this.borderColor = Colors.transparent,
        this.textColor = AppColors.white;

  CustomRoundedButton.purple({required this.label, required this.onTap})
      : this.color = AppColors.purple,
        this.borderColor = Colors.transparent,
        this.textColor = AppColors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 48,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor)
        ),
        child: Text(label,
            style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: textColor
            )),
      ),
    );
  }
}
