import 'package:algo_quest/data/questions.dart';
import 'package:algo_quest/ui/global/colors.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });
  final Questions question;

  @override
  Widget build(BuildContext context) {
    Color c1;
    Color c2;
    if (question.level == 'Beginner') {
      c1 = qBeginnerColor1;
      c2 = qBeginnerColor2;
    } else if (question.level == 'Intermediate') {
      c1 = qIntermediateColor1;
      c2 = qIntermediateColor2;
    } else {
      c1 = qAdvancedColor1;
      c2 = qAdvancedColor2;
    }
    return Container(
      height: 89,
      width: 368,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(10, 15, 15, 15),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [c1, c2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(7)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question.title,
            style: const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const Spacer(),
          Text(
            question.level,
            style: const TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
