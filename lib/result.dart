import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  final int resultScore;
  final VoidCallback resetHandeler;

  Result(this.resultScore, this.resetHandeler);

  String get resuldPhrase {
    String resultText;
    if (resultScore >= 40) {
      resultText = "You got A+ 😍";
    } else if (resultScore >= 30) {
      resultText = "You got A- 😉";
    } else if (resultScore >= 20) {
      resultText = "You got A 😊";
    } else {
      resultText = "You are fail...😥";
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
              resuldPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Your Score is: $resultScore",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: resetHandeler,
                child: Text('Reset Quize'))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
