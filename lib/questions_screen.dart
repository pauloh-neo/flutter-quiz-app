import 'package:flutter/material.dart';
import 'package:quiz_app/question_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      // Takes full screen's width
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Question",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionButton(
            answerText: 'answer 1',
            onTap: () {},
          ),
          QuestionButton(
            answerText: 'answer 2',
            onTap: () {},
          ),
          QuestionButton(
            answerText: 'answer 3',
            onTap: () {},
          ),
          QuestionButton(
            answerText: 'answer 4',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
