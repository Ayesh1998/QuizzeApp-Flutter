import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: TextStyle(fontSize: 20),
    );
  }
}
