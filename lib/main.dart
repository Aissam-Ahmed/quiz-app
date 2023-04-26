import 'package:flutter/material.dart';
import 'package:learn_application/answer.dart';
import 'package:learn_application/constants.dart';
import 'package:learn_application/drawer.dart';
import 'package:learn_application/question.dart';
import 'package:learn_application/quiz.dart';
import 'package:learn_application/result.dart';
import 'package:learn_application/support.dart';

void main() => runApp(const FirstApp());

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return FirstAppState();
  }
}

class FirstAppState extends State<FirstApp> {
  int _questionIndex = 0; // Private Property
  int finalScore = 0;

  @override
  Widget build(BuildContext context) {
    // List<String> questions = ['Question 1', 'Question 2', 'Question 3'];
    var _questions = [
      {
        'questionText': 'What\'s your favourit animal ',
        'answers': [
          {'text': 'dog', 'score': 2},
          {'text': 'snack', 'score': 4},
          {'text': 'cat', 'score': 6},
          {'text': 'eliphant', 'score': 6},
        ]
      },
      {
        'questionText': 'What\'s your favourit color ',
        'answers': [
          {'text': 'red', 'score': 2},
          {'text': 'yellow', 'score': 4},
          {'text': 'blue', 'score': 6},
          {'text': 'black', 'score': 6},
        ]
      },
    ];
    _AnswrQuestion(int score) {
      print(finalScore);
      setState(() {
        finalScore = finalScore + score;
        _questionIndex++;
        print(finalScore);
      });
    }

    _handelRestart() {
      setState(() {
        _questionIndex = 0;
        finalScore = 0;
      });
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        home: Scaffold(
            drawer: Drawer(
              child: DrawerView(),
              backgroundColor: mainColor,
            ),
            endDrawer: Drawer(child: Support()),
            appBar: AppBar(
              // titleSpacing: 0,
              backgroundColor: mainColor,
              title: Text(
                'Quiz Application',
              ),
              centerTitle: true,
              actions: [
                Builder(
                  builder: (context) {
                    return IconButton(
                      icon: Icon(Icons.support_agent),
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    );
                  },
                )
              ],
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/back.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: _questionIndex < _questions.length
                  ? Quiz(
                      questionIndex: _questionIndex,
                      questions: _questions,
                      AnswrQuestion: _AnswrQuestion,
                    )
                  : Result(
                      resultScore: finalScore,
                      handelRestart: _handelRestart,
                    ),
            )));
  }
}
