import 'package:flutter/material.dart';
import 'package:learn_application/answer.dart';
import 'package:learn_application/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  // final VoidCallback AnswrQuestion;
  final Function AnswrQuestion;

  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.AnswrQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(
              questionText: questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((e) {
            return Answer(
              callBackAnser: () => AnswrQuestion(e['score']),
              answerText: e['text'] as String,
            );
          })
        ],
      ),
    );
  }
}
