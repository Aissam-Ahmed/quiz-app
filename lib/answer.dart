import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback callBackAnser;
  final String answerText;
  const Answer(
      {super.key, required this.callBackAnser, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 24),
        padding: EdgeInsets.symmetric(vertical: 8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              backgroundColor: Color(0xFFE91E63),
            ),
            onPressed: callBackAnser,
            child: Text(
              answerText,
              style: TextStyle(fontSize: 22),
            )));
  }
}
