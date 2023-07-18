import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.changePageFunction, {super.key});

  final void Function() changePageFunction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/quiz3.png",
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: changePageFunction,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
