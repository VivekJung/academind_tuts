import 'dart:developer';

import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int calc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(Person(name: "Jackie", age: 64).getDetails()),
        TextButton(
          onPressed: () {
            setState(() {
              calc = calculation(a: 20, b: 20, t: "+");
            });
          },
          child: Text('Calculate => Result :: $calc'),
        ),
        ElevatedButton(
            onPressed: getQuestions, child: const Icon(Icons.golf_course)),
      ]),
    );
  }

  getQuestions() {
    String q1 = "What's the question?";
    log(q1);
    return q1;
  }
}

class Person {
  String? name;
  int? age;

  // Person({required this.name, required this.age});
  Person({this.name, this.age});

  String getDetails() {
    return "$name $age";
  }
}

int calculation({required int a, required int b, required String t}) {
  int calc = 0;
  t == "+" ? calc = a + b : calc = a - b;
  return calc;
}
