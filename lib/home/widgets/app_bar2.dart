import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/score_card.dart';
import 'package:flutter/material.dart';

class AppBarWidget2 extends StatelessWidget implements PreferredSizeWidget {

  final double height;

  AppBarWidget2({required this.height});

  @override
  Widget build(BuildContext context) {

    final double _boxSize = height * .22;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
              gradient: AppGradients.linear),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: height * .1),
          child: Column(
            children: [
              SizedBox(height: height * .4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                        text: 'Olá, ',
                        style: AppTextStyles.title,
                        children: [
                          TextSpan(
                              text: 'Grasiela',
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
                            image: NetworkImage('https://avatars.githubusercontent.com/u/79669750?v=4'))

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


