import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";
import "package:quiz_app/data/questions.dart";
import "package:google_fonts/google_fonts.dart";

class QuestionContainer extends StatefulWidget {
  const QuestionContainer({super.key});
  @override
  State<QuestionContainer> createState() {
    return _QuestionContainerState();
  }
}

class _QuestionContainerState extends State<QuestionContainer> {
  var currentQuestionIndex = 0;

  void changeQuestion () {
    setState(() {
      //currentQuestionIndex = currentQuestionIndex + 1;
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestions = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestions.questions,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign:TextAlign.center,
                ),
                
            const SizedBox(
              height: 30,
            ),
            ...currentQuestions.getShuffledAnswers().map((answer) {
              return AnswerButton(answer, changeQuestion);
            })
          ],
        ),
      ),
    );
  }
}
