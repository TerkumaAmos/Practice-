// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
//import 'question.dart';
import 'quiz_brain.dart';
import 'dart:developer';

QuizBrain quizBrain = QuizBrain();

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

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(questionNumber),
                //  'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
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
                bool correctAnswer = quizBrain.getCorrectAnswer(questionNumber);

                if (correctAnswer == true) {
                  log("User got it right");
                } else {
                  log("Wrong answer");
                }
                setState(() {
                  questionNumber++;
                  log(questionNumber.toString());
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
                bool correctAnswer = quizBrain.getCorrectAnswer(questionNumber);

                if (correctAnswer == false) {
                  log("User got it right");
                } else {
                  log("Wrong answer");
                }
                setState(() {
                  questionNumber++;
                  log(questionNumber.toString());
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
