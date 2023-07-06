import 'package:flutter/material.dart';

import 'package:quiz_app/src/screens/question_screen.dart';
import 'package:quiz_app/src/screens/result_screen.dart';
import 'package:quiz_app/src/screens/start_screen.dart';

import 'data/questions.dart';

const mainColor = [
  Color.fromARGB(255, 107, 15, 168),
  Color.fromARGB(255, 78, 13, 151),
];

const top = Alignment.topLeft;
const bottom = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnsers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = "results-screen";
      });
    }
  }
  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnsers,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: mainColor,
              begin: top,
              end: bottom,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
