import 'dart:core';

import 'package:aocdart/utils.dart';

class Day01 {
  int partOne(String input) {
    List<int> array = [];
    int current = 0;
    for (String line in readInput(input)) {
      if (line == '') {
        array.add(current);
        current = 0;
      } else {
        current += int.parse(line);
      }
    }
    array.sort();
    return array.last;
  }

  int partTwo(String input) {
    List<int> array = [];
    int current = 0;
    for (String line in readInput(input)) {
      if (line == '') {
        array.add(current);
        current = 0;
      } else {
        current += int.parse(line);
      }
    }
    array.sort();
    return (array[array.length - 1] +
        array[array.length - 2] +
        array[array.length - 3]);
  }
}
