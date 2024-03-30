import 'package:algo_quest/providers/mode_provider.dart';
import 'package:algo_quest/ui/design/second_screen.dart';
import 'package:algo_quest/ui/global/colors.dart';
import 'package:algo_quest/ui/models/programming_language_card.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> languages = ['Java', 'Python', 'C++', 'C'];
  void changeToSecondScreen(String s) {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SecondScreen(
                    title: s,
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 368,
            height: 117,
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/long.jpg"),
                  opacity: 0.2,
                ),
                gradient: const LinearGradient(
                    colors: [dBannerColor1, dBannerColor2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.circular(7)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Unleash Your Code Potential',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Test, Learn, Excel',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 368,
            height: 144,
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/job-interview.jpg"),
                    opacity: 0.15,
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                    colors: [iBannerColor1, iBannerColor2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Top Companies Interview',
                  style: TextStyle(
                    fontSize: 23,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(20, 52, 0, 1),
                  ),
                ),
                const Text(
                  'Questions',
                  style: TextStyle(
                    fontSize: 23,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(20, 52, 0, 1),
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(24, 63, 0, 1)),
                        onPressed: () {
                          changeToSecondScreen('Interview');
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'View All',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Choose Your Programming',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
          const Text(
            'Language',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Expanded(
                child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setJava();
                    changeToSecondScreen(languages[0]);
                  },
                  child: ProgrammingLanguageCard(name: languages[0]),
                ),
                GestureDetector(
                  onTap: () {
                    setPython();
                    changeToSecondScreen(languages[1]);
                  },
                  child: ProgrammingLanguageCard(name: languages[1]),
                ),
                GestureDetector(
                  onTap: () {
                    setCpp();
                    changeToSecondScreen(languages[2]);
                  },
                  child: ProgrammingLanguageCard(name: languages[2]),
                ),
                GestureDetector(
                  onTap: () {
                    setCpp();
                    changeToSecondScreen(languages[3]);
                  },
                  child: ProgrammingLanguageCard(name: languages[3]),
                ),
              ],
            )),
          )
        ],
      ),
    ));
  }
}
