import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHendler;
  Answer(this.selectHendler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHendler,
        child: Text(answerText),
        color: Colors.pink,
        textColor: Colors.white,
      ),
    );
  }
}
