import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';

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
  Widget ? activeScreen;
  
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
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
          child: activeScreen,
        ),
      ),
    );
  }
}