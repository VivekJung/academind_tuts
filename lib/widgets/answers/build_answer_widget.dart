import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectAnswer;
  final String answer;

  const Answer(this.selectAnswer, this.answer, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: selectAnswer, child: Text(answer))),
    );
  }
}
