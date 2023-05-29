import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
    // currentQuestionIndex += 1;
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Question //
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 199, 191, 244),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Answers //
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: answerQuestion,
                );
              },
            ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onTap: () {},
            // ),
            // const SizedBox(height: 5),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   onTap: () {},
            // ),
            // const SizedBox(height: 5),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onTap: () {},
            // ),
            // const SizedBox(height: 5),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}