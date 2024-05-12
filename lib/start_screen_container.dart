import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "learn flutter the fun way",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 24,
            ),
          ),
         const SizedBox(height: 30,),
         style:OutlinedButt,
         OutlinedButton(onPressed: () {}, child: const Text("Start Quiz"),)
        ],
      ),
    );
  }
}
