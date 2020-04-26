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
  var total = 0;

  @override
  Widget build(BuildContext context) {
    final questions = const [
      {
        'question': 'What\'s your favorite animal?',
        'answers': [
          {'choice': 'Rabbit', 'score': 10},
          {'choice': 'Snake', 'score': 1},
          {'choice': 'Elephant', 'score': 5},
          {'choice': 'Lion', 'score': 100}
        ],
      },
      {
        'question': 'What\'s your favorite color?',
        'answers': [
          {'choice': 'Black', 'score': 10},
          {'choice': 'Red', 'score': 1},
          {'choice': 'Green', 'score': 5},
          {'choice': 'White', 'score': 100}
        ],
      },
      {
        'question': 'Who\'s your favorite food?',
        'answers': [
          {'choice': 'Rice', 'score': 10},
          {'choice': 'IceCream', 'score': 1},
          {'choice': 'Mango', 'score': 5},
          {'choice': 'Noodles', 'score': 100}
        ],
      },
    ];

    void _btnAnswerQuestion(int score) {
      if (_questionIndex < questions.length) {
        setState(() {
          _questionIndex += 1;
        });
      }
      total += score;
      print(total);
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quize App"),
        backgroundColor: Colors.pink[900],
        centerTitle: true,
      ),
      body: _questionIndex < questions.length
          ? Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                children: <Widget>[
                  Question(questions[_questionIndex]['question']),
                  ...(questions[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return Answers(() => _btnAnswerQuestion(answer['score']),
                        answer['choice']);
                  }).toList()
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'The END of Questions and Your score is ${total}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        _questionIndex = 0;
                      });
                    },
                    child: Text(
                      "PlayAgain",
                      style: TextStyle(
                          color: Colors.red[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
    ));
  }
}
