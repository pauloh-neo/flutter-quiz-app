import 'package:flutter/material.dart';
import 'package:quiz_app/custom_text.dart';
import 'package:quiz_app/question_summary/question_index.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: summaryData.map((data) {
            return Row(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionIndex(
                  data['question_index'] as int,
                  isCorrect: data['correct_answer'] == data['user_answer'],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: data['question'] as String,
                          fontSize: 15,
                          style: const TextStyle(color: Colors.white),
                        ),
                        CustomText(
                          text: data['correct_answer'] as String,
                          fontSize: 15,
                          style: const TextStyle(color: Colors.lightBlue),
                        ),

                        CustomText(
                          text: data['user_answer'] as String,
                          fontSize: 15,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
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
