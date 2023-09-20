import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class question_identifier extends StatelessWidget {
  question_identifier(
      {super.key, required this.isCorrect, required this.questionIndex});
  int questionIndex;
  bool isCorrect;
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect ? Colors.blue : Colors.pink,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
