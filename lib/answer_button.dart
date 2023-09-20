import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.ontap, {super.key});
  final String answer;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        backgroundColor: Color.fromARGB(255, 41, 9, 47),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
