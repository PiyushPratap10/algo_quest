import 'package:highlight/highlight_core.dart';
import 'package:highlight/languages/java.dart';
import 'package:highlight/languages/python.dart';
import 'package:highlight/languages/cpp.dart';

Mode mode = java;

void setJava() {
  mode = java;
}

void setPython() {
  mode = python;
}

void setCpp() {
  mode = cpp;
}

Mode getMode() {
  return mode;
}
