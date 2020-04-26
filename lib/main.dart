import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    'Question 1',
    'Question 2',
    'Question 3',
  ];
  @override
  Widget build(BuildContext context) {
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
            Text("A question"),
            RaisedButton(
              onPressed: () {
                print("Answer 1");
              },
              child: Text('Answer-1'),
            ),
            RaisedButton(
              onPressed: () {
                print("Answer 2");
              },
              child: Text('Answer-2'),
            ),
            RaisedButton(
              onPressed: () {
                print("Answer 3");
              },
              child: Text('Answer-3'),
            ),
          ],
        ),
      ),
    ));
  }
}
