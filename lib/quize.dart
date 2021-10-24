import 'dart:html';

import 'package:flutter/material.dart';

class Quize extends StatelessWidget {
  // const Quize({ Key? key }) : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answeQuestion;

  Quize({
    required this.answeQuestion,
    required this.questionIndex,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answeQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
