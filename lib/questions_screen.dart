import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(selectedItem) {
    widget.onSelectedAnswer(selectedItem);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 30, height: 30),
            ...currentQuestion.shuffledAnswers().map((item) {
              return AnswerButton(
                answer: item,
                onPres: () {
                  answerQuestion(item);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onPres});
  final void Function() onPres;
  final String answer;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onPres,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 0, 3, 151),
        foregroundColor: Colors.white,
      ),
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
