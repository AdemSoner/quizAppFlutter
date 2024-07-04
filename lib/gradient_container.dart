import 'package:flutter/material.dart';
import 'package:quiz_app/start_quiz_btn.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorOne, this.colorTwo, {super.key});
  final Color colorOne;
  final Color colorTwo;
  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;

  const GradientContainer.color({super.key})
      : colorOne = const Color.fromARGB(255, 24, 8, 247),
        colorTwo = const Color.fromARGB(255, 81, 21, 245);

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorOne, colorTwo],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: ChildBodyDesign(),
      ),
    );
  }
}

class ChildBodyDesign extends StatelessWidget {
  const ChildBodyDesign({super.key});
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
        const StartQuizBtn(),
      ],
    );
  }
}
