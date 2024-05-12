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
            'asset/images/_4e3cee06-d72d-4557-8029-e0424e005342.jpg',
            width: 300,
          )
        ],
      ),
    );
  }
}
