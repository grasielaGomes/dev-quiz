
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color fontColor;
  final Color borderColor;

  LevelButton.easy()
      : this.label = 'Fácil',
        this.color = AppColors.levelButtonFacil,
        this.fontColor = AppColors.levelButtonTextFacil,
        this.borderColor = AppColors.levelButtonBorderFacil;

  LevelButton.medium()
      : this.label = 'Médio',
        this.color = AppColors.levelButtonMedio,
        this.fontColor = AppColors.levelButtonTextMedio,
        this.borderColor = AppColors.levelButtonBorderMedio;

  LevelButton.hard()
      : this.label = 'Difícil',
        this.color = AppColors.levelButtonDificil,
        this.fontColor = AppColors.levelButtonTextDificil,
        this.borderColor = AppColors.levelButtonBorderDificil;

  LevelButton.expert()
      : this.label = 'Perito',
        this.color = AppColors.levelButtonPerito,
        this.fontColor = AppColors.levelButtonTextPerito,
        this.borderColor = AppColors.levelButtonBorderPerito;


  @override
  Widget build(BuildContext context) {
    Responsive _responsive = Responsive.of(context);
    return Container(
      width: _responsive.widthPercent(20),
      padding: EdgeInsets.symmetric(vertical: _responsive.heightPercent(.7)),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: borderColor)
      ),
      child: Text(label,
          style: GoogleFonts.notoSans(
              color: fontColor,
            fontSize: 13,
          ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
