import 'package:flutter/material.dart';
import 'package:quizez_app/answers-buttons.dart';
import 'package:quizez_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _btnAnswerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Question 1',
      'Question 2',
      'Question 3',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quize App"),
        backgroundColor: Colors.pink[900],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            Answers(_btnAnswerQuestion),
            Answers(_btnAnswerQuestion),
            Answers(_btnAnswerQuestion),
          ],
        ),
      ),
    ));
  }
}
