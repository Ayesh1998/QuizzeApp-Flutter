import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quize App"),
        backgroundColor: Colors.pink[900],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          children: <Widget>[
            Text("A question"),
            RaisedButton(
              onPressed: null,
              child: Text('Answer-1'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Answer-2'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Answer-3'),
            ),
          ],
        ),
      ),
    ));
  }
}
