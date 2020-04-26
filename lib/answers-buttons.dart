import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectAnswer;

  Answers(this.selectAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          onPressed: selectAnswer,
          child: Text(
            'Answer-1',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.pink[600],
        ),
      ),
    );
  }
}
