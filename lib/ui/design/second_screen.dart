import 'package:algo_quest/providers/question_provider.dart';
import 'package:algo_quest/ui/design/third_screen.dart';
import 'package:algo_quest/ui/global/colors.dart';
import 'package:algo_quest/ui/models/question_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.title});
  final String title;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionsProvider>(
        builder: (context, provider, child) => Scaffold(
              backgroundColor: appBackgroundColor,
              appBar: AppBar(
                backgroundColor: appBarColor,
                title: Text(
                  '${widget.title} Questions',
                  style: const TextStyle(
                    fontSize: 26,
                    color: Color.fromRGBO(0, 8, 20, 1),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                child: Column(
                  children: provider.questionsList
                      .where((element) => element.submitted == false)
                      .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) =>
                                        ThirdScreen(questions: e)));
                          },
                          child: QuestionCard(question: e)))
                      .toList(),
                ),
              ),
            ));
  }
}
