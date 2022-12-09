import 'dart:core';

import 'package:aocdart/utils.dart';

class Day04 {
  int partOne(String input) {
    int result = 0;
    for (String line in readInput(input)) {
      List<int> camp =
          line.split(RegExp('[,-]')).map((e) => int.parse(e)).toList();
      if ((camp[0] <= camp[2] && camp[1] >= camp[3]) ||
          (camp[2] <= camp[0] && camp[3] >= camp[1])) {
        result++;
      }
      if ((camp[0] > camp[3]) || (camp[1] < camp[2])) {
        continue;
      }
    }
    return result;
  }

  int partTwo(String input) {
    int resultTwo = 0;
    for (String line in readInput(input)) {
      List<int> camp =
          line.split(RegExp('[,-]')).map((e) => int.parse(e)).toList();
      if ((camp[0] > camp[3]) || (camp[1] < camp[2])) {
        continue;
      }
      resultTwo++;
    }
    return resultTwo;
  }
}
