import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

//void main() {
//runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blackish', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Tieger', 'score': 10},
        {'text': 'Bear', 'score': 5},
        {'text': 'Fox', 'score': 3},
        {'text': 'Wolf', 'score': 1},
      ],
    },
    {
      'questionText': 'How are you doing?',
      'answers': [
        {'text': 'great', 'score': 10},
        {'text': 'OK', 'score': 5},
        {'text': 'Meh', 'score': 3},
        {'text': 'Bad', 'score': 1},
      ],
    },
    {
      'questionText': 'Who is the best coder?',
      'answers': [
        {'text': 'Mikhail', 'score': 1},
        {'text': 'Mikhail', 'score': 1},
        {'text': 'Mikhail', 'score': 1},
        {'text': 'Mikhail', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
