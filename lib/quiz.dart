import 'package:flutter/material.dart';
import 'package:quiz_app/questions_container.dart';
import 'package:quiz_app/start_screen_container.dart';

class Quiz extends StatefulWidget {
 const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

Widget activeScreen = const StartScreen(switchScreen);

void switchScreen () {
  setState(() {
    activeScreen = const QuestionContainer();
  });
}

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 112, 35, 245),
                Color.fromARGB(255, 138, 86, 226)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}