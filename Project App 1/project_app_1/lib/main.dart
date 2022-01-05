import 'package:flutter/material.dart';
import 'package:project_app_1/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var question_index = 0;

  final questions = [
    {
      "questionText": "What is Your Favourite Color??",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "White", "score": 9},
        {"text": "Red", "score": 12},
        {"text": "Green", "score": 11}
      ]
    },
    {
      "questionText": "Which is your Favourite Animal??",
      "answers": [
        {"text": "Bull", "score": 12},
        {"text": "Horse", "score": 10},
        {"text": "Rabbit", "score": 12},
        {"text": "Lion", "score": 1}
      ]
    },
    {
      "questionText": "Where do you Live??",
      "answers": [
        {"text": "Jhansi", "score": 15},
        {"text": "Unnao", "score": 4},
        {"text": "Rampur", "score": 6},
        {"text": "Gwalior", "score": 11}
      ]
    }
  ];
  int _total_score = 0;
  void update_question(int score) {
    _total_score += score;
    setState(() {
      question_index++;
    });
  }

  void resetQuiz() {
    setState(() {
      question_index = 0;
      _total_score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Recreated");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Project 1"),
        ),
        body: Container(
            width: double.infinity,
            child: question_index < questions.length
                ? Quiz(
                    update_question,
                    questions,
                    question_index,
                  )
                : Result(_total_score,resetQuiz)),
      ),
    );
  }
}
