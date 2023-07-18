import 'package:flutter/material.dart';
import 'package:quiz_app/answerbutton.dart';
import 'package:quiz_app/data/question_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.answers.map(((answers) {
              return Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: AnswerButton(answerText: answers, onTap: () {}));
            }))
          ],
        ),
      ),
    );
  }
}
