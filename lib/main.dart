import 'package:flutter/material.dart';

import './question.dart';

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


  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's your favourite colour?",
      "What's your favourite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App!'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Question(_questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 Chosen'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 chosen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
