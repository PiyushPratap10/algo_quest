import 'package:algo_quest/providers/mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
// import 'package:highlight/languages/java.dart';
// import 'package:highlight/languages/python.dart';
// import 'package:highlight/languages/cpp.dart';

class CodeEditor extends StatelessWidget {
  const CodeEditor({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = CodeController(
      text: '',
      language: getMode(),
    );
    return CodeTheme(
      data: CodeThemeData(styles: monokaiSublimeTheme),
      child: SingleChildScrollView(
        child: Container(
          clipBehavior: Clip.hardEdge,
          width: 350,
          height: 300,
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: CodeField(
            maxLines: null,
            expands: true,
            wrap: true,
            controller: controller,
          ),
        ),
      ),
    );
  }
}
