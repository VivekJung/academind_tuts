import 'package:flutter/material.dart';

import 'answers/build_answer_widget.dart';
import 'questions/build_question_widget.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({
    Key? key,
    required this.questionIndex,
    required this.questions,
    required this.getAnswer,
  }) : super(key: key);
  final List<Map<String, Object>> questions;
  final Function getAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Question(
              questions: questions[questionIndex]['question']
                  as String // (or you can convert this .toString())
              ),
          const SizedBox(height: 20),
          Column(
            children: [
              ...(questions[questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) {
                return Answer(
                  () => getAnswer(answer['point']! as int),
                  (answer['option']! as String),
                );
              }).toList(),
            ],
          )
        ]);
  }
}
