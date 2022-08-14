import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(
      {Key? key, required this.totalPoint, required this.resetQuizHandler})
      : super(key: key);
  final int totalPoint;
  final VoidCallback resetQuizHandler;

  String get personalityType {
    var type = "MADHESI";
    if (totalPoint < 0) {
      return type = "HIMALI";
    } else if (totalPoint < 1) {
      return type = "PAHADI";
    }
    return type;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "WOHOO!! \nMission Accomplished",
          textAlign: TextAlign.center,
        ),
        Text(
          "You are of type : $personalityType ($totalPoint)",
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        IconButton(
          onPressed: resetQuizHandler,
          icon: const Icon(Icons.restart_alt),
          splashColor: Colors.amber,
          color: Colors.blue,
          tooltip: "Restart Quiz",
        ),
      ],
    );
  }
}
