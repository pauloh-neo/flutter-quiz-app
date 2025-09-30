import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 30,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-images/quiz-logo.png',
            width: 200,
            // Better way to add Opacity
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
