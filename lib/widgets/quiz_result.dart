import 'package:flutter/cupertino.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key? key, required this.totalPoint}) : super(key: key);
  final int totalPoint;

  @override
  Widget build(BuildContext context) {
    var type = "MADHESI";
    if (totalPoint < 0) {
      type = "HIMALI";
    } else if (totalPoint < 1) {
      type = "PAHADI";
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "WOHOO!! \nMission Accomplished",
          textAlign: TextAlign.center,
        ),
        Text(
          "You are of type : $type ($totalPoint)",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
