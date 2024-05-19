import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";
import "package:quiz_app/data/questions.dart";

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
    final currentQuestions = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestions.questions[0],
              style: const TextStyle(color: Colors.white)),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestions.answers.map((answer) {
            return AnswerButton(answer, () {});
          })
        ],
      ),
    );
  }
}
