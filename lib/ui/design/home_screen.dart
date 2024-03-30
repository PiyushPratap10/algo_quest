import 'package:algo_quest/ui/design/first_screen.dart';
import 'package:algo_quest/ui/global/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
          actions: [
            IconButton.outlined(
                onPressed: () {}, icon: const Icon(Icons.person_rounded))
          ],
          backgroundColor: appBarColor,
          title: const Text(
            'AlgoQuest',
            style: TextStyle(
              fontSize: 26,
              color: Color.fromRGBO(0, 8, 20, 1),
            ),
          )),
      body: const FirstScreen(),
    );
  }
}
