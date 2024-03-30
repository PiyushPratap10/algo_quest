import 'package:algo_quest/data/questions.dart';
import 'package:algo_quest/providers/question_provider.dart';
import 'package:algo_quest/ui/global/colors.dart';
import 'package:algo_quest/ui/models/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key, required this.questions});
  final Questions questions;

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionsProvider>(
        builder: (context, provider, child) => Scaffold(
              backgroundColor: appBackgroundColor,
              appBar: AppBar(
                backgroundColor: appBarColor,
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        height: 200,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(251, 241, 190, 1),
                                Color.fromRGBO(251, 241, 190, 1)
                              ],
                            )),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  widget.questions.title,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                ),
                                const Spacer(),
                                Text(
                                  widget.questions.level,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(widget.questions.description,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CodeEditor(),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Spacer(),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(251, 241, 190, 1),
                              ),
                              onPressed: () {
                                setState(() {
                                  provider.submission(widget.questions, true);
                                  Navigator.pop(context);
                                });
                              },
                              child: const Text(
                                'Submit',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
