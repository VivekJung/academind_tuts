import 'dart:developer';

import 'package:academind/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("038 complete... now restarting the app ");
    return const MaterialApp(
      color: Colors.black,
      home: DashBoardScreen(),
    );
  }
}
