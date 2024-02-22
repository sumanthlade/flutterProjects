import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: MyApp(),
        ),
      ),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> questions = ['Q1', 'Q2', 'Q3', 'Q4', 'Q5'];
  int question_number = 0;
  List<Icon> score = [];
  List<bool> answers = [true, true, false, false, true];
  Icon correct = Icon(
    Icons.check,
    color: Colors.green,
  );
  Icon wrong = Icon(
    Icons.close,
    color: Colors.red,
  );
  void handle_questions(bool ans) {
    if (score.length == 5) {
      return;
    }
    setState(() {
      if (ans == answers[question_number]) {
        score.add(correct);
      } else {
        score.add(wrong);
      }
      if (question_number < 4) {
        question_number++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[question_number],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            onPressed: () {
              handle_questions(true);
            },
            child: Text(
              'True',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                handle_questions(false);
              },
              child: Text(
                'false',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(children: score),
        ),
      ],
    );
  }
}
