import 'package:flutter/cupertino.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "WOHOO!! \nMission Accomplished",
        textAlign: TextAlign.center,
      ),
    );
  }
}
