import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.answers,this.onTap,{super.key});

  final String answers;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
  return ElevatedButton(onPressed: onTap,
  style: ElevatedButton.styleFrom(), 
          child: Text(answers));
}}