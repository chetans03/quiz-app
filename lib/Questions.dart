import 'package:advance_basic_quiz/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'answer_button.dart';

class Questions extends StatefulWidget {
  const Questions(this.onSelectedAnswer, {super.key});
  final void Function(String answer) onSelectedAnswer;
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentIndex = 0;
  void changeIndex(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentIndex = currentIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.Questions,
              style: GoogleFonts.lato(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 13),
              textAlign: TextAlign.center,
            ),
            ...currentQuestion.getShuffeled().map(
              (answer) {
                return AnswerButton(answer, () {
                  changeIndex(answer);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
