import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "You answerd 3 out of 6 questions correctly!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.restart_alt),
              onPressed: () {},
              label: const Text("Restart Quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}
