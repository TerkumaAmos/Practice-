import 'package:practice1/question.dart';

import 'question.dart';

class QuizBrain {
  final List<Question> _questionBank = [
    Question(q: 'My name is Agber Terkuma Amos', a: true),
    Question(q: 'I school at Landmark university', a: true),
    Question(q: 'I\'m a girl', a: false),
    Question(q: 'I school at ABUAD university', a: false),
    Question(q: 'I have a girlfriend', a: false),
    Question(q: 'I am a mobile developer', a: true),
    Question(q: 'I live in the trenches of maiduguri', a: true),
    Question(q: 'Hey how are you doing', a: true),
    Question(q: 'I am 20', a: true),
  ];

  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].q;
  }

  bool getCorrectAnswer(int questionNumber) {
    return _questionBank[questionNumber].a;
  }
}
