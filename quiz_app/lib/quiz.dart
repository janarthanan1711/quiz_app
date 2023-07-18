import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var activeScreen = 'start-screen';

  void changePage() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 78, 11, 151),
                Color.fromARGB(255, 107, 15, 168)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: activeScreen == 'start-screen'
                ? StartScreen(changePage)
                : const QuestionScreen()),
      ),
    );
  }
}
