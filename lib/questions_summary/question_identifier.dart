import 'package:flutter/material.dart';

class QuestionNumberCircle extends StatelessWidget {
  const QuestionNumberCircle(this.data, {super.key});

  final Map<String, Object> data;

  Color checkCorrectAnswer(String userAnswer, String correctAnswer) {
    return userAnswer == correctAnswer ? Colors.lightGreen : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    final String questionNumber =
        ((data['question_index'] as int) + 1).toString();
    final String userAnswer = data['user_answer'] as String;
    final String correctAnswer = data['correct_answer'] as String;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: checkCorrectAnswer(userAnswer, correctAnswer),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

//data['question_index'] as int) + 1).toString()