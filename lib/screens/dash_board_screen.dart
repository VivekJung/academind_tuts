import 'dart:developer';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int calc = 0;
  var questionIndex = 0;

  getAnswer() {
    if (questionIndex < 3) {
      setState(() {
        questionIndex += 1;
      });
    } else {
      log("End of questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        "question": "Your favorite destination?",
        "answers": ["Himal", "Pahad", "Terai"],
      },
      {
        "question": "Your favorite food?",
        "answers": ["salad", "paratha", "momo"],
      },
      {
        "question": "Your favorite tree?",
        "answers": ["Peepal", "Banyan", "Coconut"],
      },
    ];
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(Person(name: "Jackie", age: 64).getDetails()),
              // ElevatedButton(
              //   onPressed: () {
              //     setState(() {
              //       calc = calculation(a: 20, b: 20, t: "+");
              //     });
              //   },
              //   child: Text('Calculate => Result :: $calc'),
              // ),
              // const SizedBox(height: 20),
              Question(
                  questions: questionIndex < questions.length
                      ? questions[questionIndex]['question'].toString()
                      : "End of questions"),

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
            ]),
      ),
    );
  }
}

// class Person {
//   String? name;
//   int? age;

//   // Person({required this.name, required this.age});
//   Person({this.name, this.age});

//   String getDetails() {
//     return "$name $age";
//   }
// }

// int calculation({required int a, required int b, required String t}) {
//   int calc = 0;
//   t == "+" ? calc = a + b : calc = a - b;
//   return calc;
// }

class Question extends StatelessWidget {
  final String questions;

  const Question({super.key, required this.questions});
  @override
  Widget build(BuildContext context) {
    return Text(questions,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ));
  }
}

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
