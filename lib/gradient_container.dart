import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startQuiz, {super.key});
  final Color colorOne = const Color.fromARGB(255, 24, 8, 247);
  final Color colorTwo = const Color.fromARGB(255, 81, 21, 245);
  final void Function() startQuiz;
  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          "assets/quiz-logo.png",
          width: 250,
        ),
        const Padding(padding: EdgeInsets.only(top: 50)),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "Start Quiz",
          ),
        ),
      ]),
    );
  }
}
