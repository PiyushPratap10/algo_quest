import 'package:algo_quest/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsProvider extends ChangeNotifier {
  List<Questions> questionsList = [
    Questions(
        title: 'Sum of Even Numbers',
        description:
            'Write a function that calculates the sum of all even numbers from 1 to N (inclusive). Return the total sum.',
        level: 'Beginner'),
    Questions(
        title: 'Finding Palindrome',
        description:
            "Implement a function to determine if a given string is a palindrome (ignoring spaces and cases). Return true if it's a palindrome, false otherwise.",
        level: 'Intermediate'),
    Questions(
        title: 'BST Operations',
        description:
            "Implement basic operations like insertion, deletion, and searching in a binary search tree. Return the modified tree or search result accordingly.",
        level: "Advanced"),
    Questions(
        title: "Reverse a String",
        description:
            "Implement a function to reverse a given string in-place. Return the reversed string.",
        level: 'Beginner'),
    Questions(
        title: "Maximum Subarray Sum",
        description:
            "Write a function to find the contiguous subarray within a given array of integers that has the largest sum. Return the sum of this subarray.",
        level: "Intermediate"),
    Questions(
        title: "LCS Problem",
        description:
            "Write a function to find the length of the longest common subsequence of two given strings. Return the length of the LCS.",
        level: "Advanced"),
    Questions(
        title: "Factorial Calculation",
        description:
            "Write a function to compute the factorial of a non-negative integer N. Return the resulting factorial value.",
        level: "Beginner"),
    Questions(
        title: "Sorting Algorithm",
        description:
            "Implement the merge sort algorithm to sort a given array of integers in non-decreasing order. Return the sorted array.",
        level: "Intermediate"),
    Questions(
        title: "Graph Traversal (DFS/BFS)",
        description:
            "Implement Depth-First Search (DFS) or Breadth-First Search (BFS) traversal algorithms for a given graph represented as an adjacency matrix or list. Return the traversal order.",
        level: "Advanced"),
    Questions(
        title: "Check Prime Number",
        description:
            "Implement a function to determine if a given positive integer N is a prime number or not. Return true if it's prime, false otherwise.",
        level: "Beginner"),
    Questions(
        title: "Linked List Operations",
        description:
            " Implement basic operations like insertion, deletion, and searching in a singly linked list. Return the modified linked list or search result accordingly.",
        level: "Intermediate"),
    Questions(
        title: "Knapsack Problem",
        description:
            "Implement the 0/1 knapsack problem using dynamic programming to find the maximum value that can be obtained with a given weight constraint. Return the maximum value achievable.",
        level: "Advanced")
  ];

  void submission(Questions question, bool value) {
    question.submitted = value;
    notifyListeners();
  }
}
