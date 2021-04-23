import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ScorePage extends StatelessWidget {
  final String title;
  final int questions;
  final int rightAnswers;


  ScorePage({
    required this.title,
    required this.questions,
    required this.rightAnswers
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(AppImages.trophy2),
            Column(
              children: [
                Text('Parabéns!', style: AppTextStyles.heading40),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                      text: 'Você concluiu\n',
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(
                            text: '$title\n',
                            style: AppTextStyles.bodyBold),
                        TextSpan(
                            text: 'com $rightAnswers acertos em $questions questões.',
                            style: AppTextStyles.body)
                      ]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                CustomRoundedButton.purple(label: 'Compartilhar', onTap: (){
                  Share.share('Acertei $rightAnswers de $questions questões em $title.');
                }),
                SizedBox(height: 10),
                CustomRoundedButton.transparent(label: 'Voltar ao início', onTap: (){
                  Navigator.pushReplacementNamed(context, '/home');
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
