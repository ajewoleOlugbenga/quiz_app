import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";

class QuestionContainer extends StatefulWidget {
  const QuestionContainer({super.key});
  @override
  State<QuestionContainer> createState() {
    return _QuestionContainerState();
  }
}

class _QuestionContainerState extends State<QuestionContainer> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The question...", 
          style: TextStyle(color: Colors.white)),
          const SizedBox(
            height: 30,
          ),
          AnswerButton("Answer 1..", () {}),
          AnswerButton("Answer 2..", () {}),
          AnswerButton("Answer 3..", () {})
        ],
      ),
    );
  }
}
