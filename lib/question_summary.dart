import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Question_summary extends StatelessWidget {
  Question_summary(this.summary, {super.key});
  List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: data["Correct_answer"] == data["Choosen_answer"]
                          ? const Color.fromARGB(255, 37, 142, 228)
                          : const Color.fromARGB(255, 110, 41, 64),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    ((data["Question_index"] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data["Question"]).toString(),
                        style: GoogleFonts.lato(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: const Color.fromARGB(255, 75, 70, 70)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text((data["Correct_answer"]).toString(),
                          style: GoogleFonts.lato(
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              color: Color.fromARGB(255, 76, 110, 231))),
                      SizedBox(
                        height: 10,
                      ),
                      Text((data["Choosen_answer"]).toString(),
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: const Color.fromARGB(255, 110, 41, 64),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
