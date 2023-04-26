import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question({super.key, required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(questionText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w200,
            letterSpacing: 1.4,
            wordSpacing: 1.9,
            color: Colors.white,
          )),
    );
  }

  split(String s) {}
}
