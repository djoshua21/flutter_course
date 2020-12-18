import 'package:flutter/material.dart';
import 'package:flutter_course/result.dart';

import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favourite colour?",
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'Black', 'score': 4},
        {'text': 'White', 'score': 5},
        {'text': 'Purple', 'score': 6},
      ]
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {'text': 'Horse', 'score': 1},
        {'text': 'Snake', 'score': 2},
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 4},
        {'text': 'Fish', 'score': 5},
        {'text': 'Bird', 'score': 6},
      ]
    },
    {
      'questionText': "Who is your favourite Friend?",
      'answers': [
        {'text': 'Jerry', 'score': 1},
        {'text': 'Cameron', 'score': 2},
        {'text': 'Jenna', 'score': 3},
        {'text': 'Deen', 'score': 4},
        {'text': 'Anita', 'score': 5},
        {'text': 'Jordan', 'score': 6},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
      print('Answer Chosen');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App!'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
