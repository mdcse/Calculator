import 'dart:math';

import 'package:stack/stack.dart';

class Evaluate {
  bool flag = true;
  Stack<num> stack = new Stack<num>();
  num postfixEvaluation(String s) {
    for (int i = 0; i < s.length; i++) {
      int t = s.codeUnitAt(i) - '0'.codeUnitAt(0);
      double temp = t.toDouble();
      print(stack.size());
      if (temp >= 0.0 && temp <= 9.0) {
        // print(temp);
        stack.push(temp);
      } else if (s[i] == '+' ||
          s[i] == '-' ||
          s[i] == '*' ||
          s[i] == '/' ||
          s[i] == '^') {
        // Exception Handling for "+5" like input
        if (stack.size() < 2) {
          flag = false;
          return -1; // Unsuccessful Termination
        }
        var b = stack.pop();
        var a = stack.pop();
        switch (s[i]) {
          case '+':
            stack.push(a + b);
            break;
          case '-':
            stack.push(a - b);
            break;
          case '*':
            stack.push(a * b);
            break;
          case '/':
            stack.push(a / b);
            break;
          case '^':
            stack.push(pow(a, b));
            break;
        }
      }
    }
    // Exception handling for the empty expression
    if (stack.isEmpty) {
          flag = false;
          return -1; // Unsuccessful Termination
        }
    return stack.top();
  }

  num prefixEvaluation(String s) {
    for (int i = s.length - 1; i >= 0; i--) {
      int t = s.codeUnitAt(i) - '0'.codeUnitAt(0);
      double temp = t.toDouble();
      if (temp >= 0.0 && temp <= 9.0) {
        stack.push(temp);
      } else if (s[i] == '+' ||
          s[i] == '-' ||
          s[i] == '*' ||
          s[i] == '/' ||
          s[i] == '^') {

        // Exception Handling for "5/" like input
        if (stack.size() < 2) {
          flag = false;
          return -1; // Unsuccessful Termination
        }
        var a = stack.pop();
        var b = stack.pop();
        switch (s[i]) {
          case '+':
            stack.push(a + b);
            break;
          case '-':
            stack.push(a - b);
            break;
          case '*':
            stack.push(a * b);
            break;
          case '/':
            stack.push(a / b);
            break;
          case '^':
            stack.push(pow(a, b));
            break;
        }
      }
    }
    // Exception handling for the empty expression
    if (stack.isEmpty) {
          flag = false;
          return -1; // Unsuccessful Termination
        }
    return stack.top();
  }
}
