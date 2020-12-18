import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 5) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 10) {
      resultText = 'You are pretty likeable';
    } else if (resultScore <= 15) {
      resultText = 'You are ... weird!';
    } else {
      resultText = 'You are Fricking Insane !!! ';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            FlatButton(
              child: Text('Restart Quiz!'),
              textColor: Colors.red,
              onPressed: resetHandler,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center, //  My own Code
        ),
      ),
    );
  }
}
