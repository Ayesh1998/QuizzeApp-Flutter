import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectAnswer;
  final String answer;

  Answers(this.selectAnswer, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          onPressed: selectAnswer,
          child: Text(
            answer,
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.pink[600],
        ),
      ),
    );
  }
}
