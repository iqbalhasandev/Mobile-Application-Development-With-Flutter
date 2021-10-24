// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './quize.dart';

void main() => runApp(QuzeApp());

class QuzeApp extends StatefulWidget {
  const QuzeApp({Key? key}) : super(key: key);

  @override
  _QuzeAppState createState() => _QuzeAppState();
}

class _QuzeAppState extends State<QuzeApp> {
  final _questions = const [
    {
      'question': 'Q1: Who developed flutter?',
      'answer': [
        {'text': 'facebook', 'score': -2},
        {'text': 'google', 'score': 10},
        {'text': 'Apple', 'score': -2},
        {'text': 'Hero Alom', 'score': -2},
      ]
    },
    {
      'question': 'Q2: Who is PORIMONI?',
      'answer': [
        {'text': 'Iqbal\'s Wife', 'score': -2},
        {'text': 'Rokon er salika', 'score': 10},
        {'text': 'Atul\'s wife', 'score': -2},
        {'text': 'Hero Alom\'s wife', 'score': -2},
      ]
    },
    {
      'question': 'Q1: Who is a social media?',
      'answer': [
        {'text': 'facebook', 'score': 10},
        {'text': 'google', 'score': -2},
        {'text': 'bing', 'score': -2},
        {'text': 'Apple', 'score': -2},
      ]
    },
    {
      'question': 'Q1: Who is a search Engin?',
      'answer': [
        {'text': 'facebook', 'score': -2},
        {'text': 'twitter', 'score': -2},
        {'text': 'google', 'score': 10},
        {'text': 'instagram', 'score': -2},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuzie() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("You habe more questions to answer");
    } else {
      print("No more Question");
    }
  }

  void answeQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Quizz"),
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: _questionIndex < _questions.length
              ? Quize(
                  answeQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _resetQuize),
        ),
      ),
    );
  }
}
