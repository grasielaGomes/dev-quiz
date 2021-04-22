import 'package:dev_quiz/challenge/challenge_controller.dart';
import 'package:dev_quiz/challenge/widgets/question_indicator.dart';
import 'package:dev_quiz/challenge/widgets/question_title.dart';
import 'package:dev_quiz/challenge/widgets/quiz_answer.dart';
import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_responsive.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';

String selectedAnswer = '';
bool isRight = false;
bool isChecked = false;
bool isAnswered = false;

class ChallengePage extends StatefulWidget {

  final List<QuestionModel> questions;
  const ChallengePage({required this.questions});


  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {

  final controller = ChallengeController();
  final pageController = PageController();

  @override
  void initState() {
    controller.currentPageNotifier.addListener(() {
      setState(() {});
    });
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt();
    });
    super.initState();
  }

  Color get _selectedColor =>
      isChecked && isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorder =>
      isChecked && isRight ? AppColors.darkGreen : AppColors.darkRed;

  TextStyle get _selectedTextStyle =>
      isChecked && isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIcon => isChecked && isRight ? Icons.check : Icons.close;


  @override
  Widget build(BuildContext context) {
    Responsive _responsive = Responsive.of(context);
    final double appBarSize = _responsive.heightPercent(10);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarSize),
        child: ValueListenableBuilder<int>(
          valueListenable: controller.currentPageNotifier,
          builder: (_, value, __) => QuestionIndicator(
            height: appBarSize,
            currentPage: value,
            length: widget.questions.length,
          )
        ),
      ),
      body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          itemCount: widget.questions.length,
          itemBuilder: (_, index){
            return Container(
              height: _responsive.heightPercent(80),
              padding: EdgeInsets.symmetric(horizontal: _responsive.widthPercent(5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  QuestionTitle(title: widget.questions[index].title),
                  SizedBox(height: _responsive.heightPercent(5)),
                  Container(
                    height: _responsive.heightPercent(40),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (_, index2){

                          final answer = widget.questions[index].answer[index2];
                          final bool isSelected = selectedAnswer == answer.title;

                          Color checkedColor(){
                            if(isSelected && !isChecked){
                              return AppColors.lightGrey.withAlpha(30);
                            } else if(isSelected && isChecked){
                              return _selectedColor;
                            } else{
                              return AppColors.white;
                            }
                          }

                          Color checkedBorderColor(){
                            if(isSelected && !isChecked){
                              return AppColors.lightGrey;
                            } else if(isSelected && isChecked){
                              return _selectedBorder;
                            } else{
                              return AppColors.border;
                            }
                          }

                          IconData checkedIcon(){
                            if(isSelected && !isChecked){
                              return Icons.check;
                            } else if(isSelected && isChecked){
                              return _selectedIcon;
                            } else{
                              return Icons.arrow_right_rounded;
                            }
                          }

                          TextStyle checkedText(){
                            if(isSelected && !isChecked){
                              return AppTextStyles.bodyBold;
                            } else if(isSelected && isChecked){
                              return _selectedTextStyle;
                            } else{
                              return AppTextStyles.body;
                            }
                          }

                          return QuizAnswer(
                              title: answer.title,
                              style: checkedText(),
                              icon: checkedIcon(),
                              color: checkedColor(),
                              borderColor: checkedBorderColor(),
                              onTap: !isChecked ? (){
                                setState(() {
                                  selectedAnswer = answer.title;
                                  isRight = answer.isRight;
                                  isAnswered = true;
                                });
                              } : () => null );
                        }),
                  )
                ],
              ),
            );
          }),
      bottomNavigationBar: Container(
        height: _responsive.heightPercent(16),
        padding: EdgeInsets.symmetric(horizontal: _responsive.widthPercent(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomRoundedButton.white(
                  label: 'Próxima',
                  onTap: () {
                    setState(() {
                      selectedAnswer = '';
                      isChecked = false;
                      isAnswered = false;
                    });

                    if(pageController.page == widget.questions.length -1){
                      Navigator.pushNamed(context, '/home');
                    } else {
                      pageController.nextPage(
                          duration: Duration(milliseconds: 100),
                          curve: Curves.easeIn);
                    }
                  })
            ),
            SizedBox(width: 10),
            Expanded(
              child: CustomRoundedButton(
                  color: !isChecked && isAnswered ? AppColors.darkGreen : AppColors.green,
                  label: 'Confirmar',
                  onTap: !isChecked ? (){
                    setState(() {
                      isChecked = true;
                    });
                  } : () => null),
            ),
          ],
        ),
      ),
    );
  }
}
