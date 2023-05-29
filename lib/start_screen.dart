import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 240,
            color: const Color.fromARGB(205, 238, 237, 237),
          ),
          const SizedBox(height: 60),
          //====================//
          Text(
            'Flutter Knowledge',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 207, 200, 246),
              fontSize: 30,
            )
          ),
          const SizedBox(height: 30),
          //====================//
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 48, 20, 96),
            ),
            icon: const Icon(
              Icons.arrow_right_outlined,
              size: 20,
            ),
            label: const Text(
              'Start quiz',
              style: TextStyle(
                fontSize: 20,
                color:Color.fromARGB(255, 199, 191, 244),
              ),
            ),
          ),
          //====================//
        ],
      ),
    );
  }
}
