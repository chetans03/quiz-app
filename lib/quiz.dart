import 'package:advance_basic_quiz/data/questions.dart';
import 'package:flutter/material.dart';

import 'FrontScreen.dart';
import 'Questions.dart';
import 'result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activescreen = "start-screen";

  void SwitchScreen() {
    setState(() {
      activescreen = "question-screen";
    });
  }

  Widget? screenwidget;
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == question.length) {
      setState(() {
        activescreen = "result-screen";
      });
    }
  }

  void Startquiz() {
    setState(() {
      selectedAnswers = [];
      activescreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    if (activescreen == "start-screen") {
      setState(() {
        screenwidget = FrontScreen(Startquiz);
      });
    }
    if (activescreen == "start-screen") {
      setState(() {
        screenwidget = FrontScreen(SwitchScreen);
      });
    }
    if (activescreen == "question-screen") {
      setState(() {
        screenwidget = Questions(chooseAnswer);
      });
    }

    if (activescreen == "result-screen") {
      setState(() {
        screenwidget = ResultScreen(
          chosenanswer: selectedAnswers,
          onrestart: Startquiz,
        );
      });
    }
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 10, 37, 60),
            Color.fromARGB(255, 57, 13, 65)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: screenwidget,
      ),
    );
  }
}
