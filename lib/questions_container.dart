import "package:flutter/material.dart";

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
    return const Text("Questionnaire");
  }
}