import 'dart:core';

import 'package:aocdart/utils.dart';

class Day02 {
  int partOne(String input) {
    int result = 0;
    for (String line in readInput(input)) {
      int x = line.codeUnitAt(0) - 'A'.codeUnitAt(0);
      int y = line.codeUnitAt(2) - 'X'.codeUnitAt(0);
      result += y + 1;
      if (x == y) {
        result += 3;
      } else if ((x + 1) % 3 == y) {
        result += 6;
      }
    }
    return result;
  }

  int partTwo(String input) {
    int resultTwo = 0;
    for (String line in readInput(input)) {
      int x = line.codeUnitAt(0) - 'A'.codeUnitAt(0);
      int y = line.codeUnitAt(2) - 'X'.codeUnitAt(0);

      if (y == 0) {
        resultTwo += (x + 2) % 3 + 1;
      } else if (y == 1) {
        resultTwo += x + 4;
      } else {
        resultTwo += (x + 1) % 3 + 7;
      }
    }
    return resultTwo;
  }
}
