
import 'package:flutter/foundation.dart';

class ChallengeController{

  final currentPageNotifier = ValueNotifier<int>(0);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  final rightAnswers = ValueNotifier<int>(0);
  int get answerCorrect => currentPageNotifier.value;
  set answerCorrect(int value) => currentPageNotifier.value = value;

  void rightAnswer(bool value){
    if (value){
      answerCorrect++;
    }
  }

}