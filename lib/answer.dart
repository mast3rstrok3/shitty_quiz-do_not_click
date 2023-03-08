import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
              ),
            backgroundColor: Color(0xff695DF3), 
            foregroundColor: Color(0xffFEFDFF),
            ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
