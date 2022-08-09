import 'dart:developer';
import 'package:academind/widgets/questions/question_list.dart';
import 'package:academind/widgets/quiz.dart';
import 'package:flutter/material.dart';

import '../widgets/answers/build_answer_widget.dart';
import '../widgets/questions/build_question_widget.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int calc = 0;
  var _questionIndex = 0;
  final _questions = questionsList;

  _getAnswer() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    } else {
      log("No more questions");
    }
    log("End of question $_questionIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: QuizWidget(
              questionIndex: _questionIndex,
              questions: _questions,
              getAnswer: _getAnswer)),
    );
  }
}
