import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/home_controller.dart';
import 'package:dev_quiz/home/widgets/app_bar2.dart';
import 'package:dev_quiz/home/widgets/level_button.dart';
import 'package:dev_quiz/home/widgets/quiz_card.dart';
import 'package:flutter/material.dart';

import 'home_state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });

  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    if(controller.state == HomeState.success){
      return Scaffold(
        appBar: AppBarWidget2(
          height: responsive.heightPercent(24),
          user: controller.user!,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: responsive.widthPercent(5)),
          child: Column(
            children: [
              Container(
                height: responsive.heightPercent(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LevelButton.easy(),
                    LevelButton.medium(),
                    LevelButton.hard(),
                    LevelButton.expert(),
                  ],
                ),
              ),
              Expanded(
                  child: GridView.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: controller.quizzes!.map((e) => QuizCard(
                      title: e.title,
                      totalQuestions: e.questions.length,
                      answeredQuestions: e.questionAnswered,
                    )).toList(),
                  ))
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            backgroundColor: AppColors.chartSecondary,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
          ),
        ),
      );
    }
  }
}
