import 'dart:developer';

import 'package:flutter/material.dart';

class StartQuizBtn extends StatefulWidget {
  const StartQuizBtn({super.key});

  @override
  State<StartQuizBtn> createState() {
    return _StartQuizBtn();
  }
}

class _StartQuizBtn extends State<StartQuizBtn> {
  void btnClicked() {
    log("Buttona Tiklandi");
  }

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: btnClicked,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: const Text(
        "Start Quiz",
      ),
    );
  }
}
