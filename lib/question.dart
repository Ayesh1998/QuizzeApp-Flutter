import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          question,
          style: TextStyle(fontSize: 27),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
