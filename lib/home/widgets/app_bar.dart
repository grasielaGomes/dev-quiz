import 'package:flutter/material.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/score_card.dart';


class AppBarWidget extends PreferredSize {
  AppBarWidget() : super (
      preferredSize: Size.fromHeight(250),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 190,
          decoration: BoxDecoration(
              gradient: AppGradients.linear),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 60),
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
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage('https://avatars.githubusercontent.com/u/79669750?v=4'))

                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              ScoreCard()
            ],
          ),
        )
      ],
    )
  );
}
