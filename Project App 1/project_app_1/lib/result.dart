import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result_score;
  final VoidCallback resultHandler;
  Result(this.result_score, this.resultHandler);

  String get resultphrase {
    var resultText = "You Did It!";
    if (result_score <= 10) {
      resultText = "You are Awesome and Innocent";
    } else if (result_score <= 16) {
      resultText = "Pretty Likable!";
    } else if (result_score <= 20) {
      resultText = "You Are Best";
    } else {
      resultText = "You are Strange";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultphrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: resultHandler, child: Text("Restart Quiz"))
        ],
      ),
    );
  }
}
