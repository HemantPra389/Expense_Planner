import 'package:flutter/material.dart';

import 'answers.dart';
import 'questions.dart';
import 'result.dart';

class Quiz extends StatelessWidget {
  final Function update_question;
  final List<Map<String, Object>> questions;
  final int question_index;
  Quiz(@required this.update_question, @required this.questions,
      @required this.question_index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[question_index]['questionText'] as String),
        ...(questions[question_index]["answers"] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>update_question(answer['score']), answer["text"] as String);
        }).toList()
      ],
    );
  }
}
