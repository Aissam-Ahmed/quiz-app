import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback handelRestart;
  const Result(
      {super.key, required this.resultScore, required this.handelRestart});

  String get resultPhase {
    if (resultScore <= 4) {
      return "🤣 Bad Your Score Is ${resultScore}";
    } else {
      return "😍 Good Your Score Is ${resultScore}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black.withOpacity(.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
              wordSpacing: 1.9,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xFFE91E63),
                  foregroundColor: Colors.white,
                  elevation: 20,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32)),
              onPressed: handelRestart,
              child: Text(
                'Restart Quiz!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
