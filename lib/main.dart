import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': "What's your favourite colour?",
      'answers': ['Red', 'Blue', 'Green', 'Purple', 'Yellow']
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': ['Dog', 'Cat', 'Bird', 'Rabbit']
    },
    {
      'questionText': "Who is your favourite Friend?",
      'answers': ['Deen', 'Jenna', 'Jayden', 'Cameron']
    },
  ];

  void _answerQuestion() {
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
            ? Container(
                child: Column(
                  children: <Widget>[
                    Question(_questions[_questionIndex]['questionText']),
                    ...(_questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList(),
                  ],
                ),
              )
            : Container(
                child: Center(
                  child: Text('You Did It!!'),
                ),
              ),
      ),
    );
  }
}
