// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  // My name is Agber Terkuma Amos
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  // List<String> questions = [
  //   'My name is Agber Terkuma Amos',
  //   'I school at Landmark university',
  //   'I\'m a girl',
  // ];
  // List<bool> answers = [
  //   true,
  //   true,
  //   false,
  // ];
  // Question q1 = Question(q: 'My name is Agber Terkuma Amos', a: true);
  List<Question> questionBank = [
    Question(q: 'My name is Agber Terkuma Amos', a: true),
    Question(q: 'I school at Landmark university', a: true),
    Question(q: 'I\'m a girl', a: false),
    Question(q: 'I school at ABUAD university', a: false),
    Question(q: 'I have a girlfriend', a: false),
    Question(q: 'I am a mobile developer', a: true),
    Question(q: 'I live in the trenches of maiduguri', a: true),
    Question(q: 'I am 20', a: true),
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].q,
                //  'This is where the question text will go.',
                //  textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              onPressed: () {
                bool correctAnswer = questionBank[questionNumber].a;

                if (correctAnswer == true) {
                  print("User got it right");
                } else {
                  print("Wrong answer");
                }
                setState(() {
                  questionNumber++;
                  print(questionNumber);
                });

                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswer = questionBank[questionNumber].a;

                if (correctAnswer == false) {
                  print("User got it right");
                } else {
                  print("Wrong answer");
                }
                setState(() {
                  questionNumber++;
                  print(questionNumber);
                });

                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
