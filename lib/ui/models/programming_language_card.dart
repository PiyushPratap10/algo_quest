import 'package:algo_quest/ui/global/colors.dart';
import 'package:flutter/material.dart';

class ProgrammingLanguageCard extends StatelessWidget {
  const ProgrammingLanguageCard({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 90,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/code.jpg"),
              opacity: 0.15,
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(
              colors: [pCardColor1, pCardColor2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Text(
        name,
        style: const TextStyle(shadows: [
          Shadow(
              color: Color.fromARGB(255, 0, 0, 0),
              offset: Offset(0, 2),
              blurRadius: 15)
        ], color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
