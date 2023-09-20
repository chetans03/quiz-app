import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrontScreen extends StatelessWidget {
  FrontScreen(this.startquiz, {super.key});
  final void Function() startquiz;
  @override
  Widget build(BuildContext) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Opacity(
            opacity: .4,
            child: Image(
              image: AssetImage("images/quiz.jpg"),
              height: 200.0,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'LEARN FLUTTER THE WAY',
            style: GoogleFonts.lato(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: startquiz,
            label: Text(
              "start quiz",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
