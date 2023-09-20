import 'package:advance_basic_quiz/data/questions.dart';
import 'package:advance_basic_quiz/question_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {super.key, required this.chosenanswer, required this.onrestart});
  final void Function() onrestart;
  final List<String> chosenanswer;
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswer.length; i++) {
      summary.add({
        "Question_index": i,
        "Question": question[i].Questions,
        "Correct_answer": question[i].Answers[0],
        "Choosen_answer": chosenanswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    var summary_res = getSummary();
    var numtotalQuestions = question.length;
    var numCorrectAnsewer = summary_res.where((data) {
      return data["Choosen_answer"] == data["Correct_answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "You answered $numCorrectAnsewer qstn out of $numtotalQuestions correctly",
              style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.white,
                  decoration: TextDecoration.none),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Question_summary(summary_res),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: onrestart,
              child: const Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
