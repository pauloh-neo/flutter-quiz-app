import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  final int currentIndex;
  final bool isCorrect;

  const QuestionIndex(this.currentIndex, {required this.isCorrect, super.key});

  @override
  Widget build(BuildContext context) {
    final questionNumber = currentIndex + 1;
    return Container(
      alignment: Alignment.center,
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: isCorrect ? Colors.lightGreen : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(questionNumber.toString()),
    );
  }
}
