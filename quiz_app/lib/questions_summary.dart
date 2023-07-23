import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  List<Map<String, Object>> summaryData;
  QuestionSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(((e['question_index'] as int) + 1).toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18)),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 290,
                            child: Text(e['questions'] as String,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(e['userAnswer'] as String,
                          style: const TextStyle(
                              color: Colors.blue, fontSize: 16)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(e['correctAnswer'] as String,
                          style: const TextStyle(
                              color: Colors.green, fontSize: 16)),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
