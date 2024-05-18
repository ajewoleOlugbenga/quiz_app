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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The question..."),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, 
          child: const Text("Answer 1")),
          ElevatedButton(onPressed: () {}, 
          child: const Text("Answer 2")),
          ElevatedButton(onPressed: () {},
           child: const Text("Answer 3")),
        ],
      ),
    );
  }
}
