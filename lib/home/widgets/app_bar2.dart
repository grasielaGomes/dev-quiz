import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/score_card.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class AppBarWidget2 extends StatelessWidget implements PreferredSizeWidget {

  final double height;
  final UserModel user;

  AppBarWidget2({required this.height, required this.user});

  @override
  Widget build(BuildContext context) {

    final double _boxSize = height * .22;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: height * .75,
          decoration: BoxDecoration(
              gradient: AppGradients.linear),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: height * .09),
          child: Column(
            children: [
              SizedBox(height: height * .3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                        text: 'Olá, ',
                        style: AppTextStyles.title,
                        children: [
                          TextSpan(
                              text: user.name,
                              style: AppTextStyles.titleBold
                          )
                        ]
                    ),
                  ),
                  Container(
                    width: _boxSize,
                    height: _boxSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * .04),
                        image: DecorationImage(
                            image: NetworkImage(user.photoUrl))

                    ),
                  )
                ],
              ),
              SizedBox(height: height * .08),
              ScoreCard()
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}


