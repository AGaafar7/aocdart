import 'dart:core';

import 'package:aocdart/utils.dart';

class Day05 {
  String partOne(String input) {
    List<String> stack = [
      "DTWFJSHN",
      "HRPQTNBG",
      "LQV",
      "NBSWRQ",
      "NDFTVMB",
      "MDBVHTR",
      "DBQJ",
      "DNJVRZHQ",
      "BNHMS"
    ];
    for (String line in readInput(input)) {
      List<String> tokens = line.split(' ');
      int n = int.parse(tokens[1]);
      int from = int.parse(tokens[3]) - 1;
      int to = int.parse(tokens[5]) - 1;
      String moved = stack[from]
          .substring(stack[from].length - n)
          .split('')
          .reversed
          .join();
      stack[to] += moved;
      stack[from] = stack[from].substring(0, stack[from].length - n);
    }
    String result = stack.map((e) => e[e.length - 1]).join();

    return result;
  }

  String partTwo(String input) {
    List<String> stack = [
      "DTWFJSHN",
      "HRPQTNBG",
      "LQV",
      "NBSWRQ",
      "NDFTVMB",
      "MDBVHTR",
      "DBQJ",
      "DNJVRZHQ",
      "BNHMS"
    ];
    for (String line in readInput(input)) {
      List<String> tokens = line.split(' ');
      int n = int.parse(tokens[1]);
      int from = int.parse(tokens[3]) - 1;
      int to = int.parse(tokens[5]) - 1;
      String moved = stack[from].substring(stack[from].length - n);
      stack[to] += moved;
      stack[from] = stack[from].substring(0, stack[from].length - n);
    }
    String resultTwo = stack.map((e) => e[e.length - 1]).join();

    return resultTwo;
  }
}
