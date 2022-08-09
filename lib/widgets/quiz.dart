import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
  final VoidCallback getAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Question(
              questions: questionIndex < questions.length
                  ? questions[questionIndex]['question']
                      as String // (or you can convert this .toString())
                  : "Wohoo!! It's complete"),
          const SizedBox(height: 20),
          questionIndex < questions.length
              ? Column(
                  children: [
                    ...(questions[questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(getAnswer, answer);
                    }).toList(),
                  ],
                )
              : const Text("Result :..."),
        ]);
  }
}
