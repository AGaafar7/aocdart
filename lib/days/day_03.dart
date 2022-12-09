import 'dart:core';

import 'package:aocdart/utils.dart';

class Day03 {
  int partOne(String input) {
    int sum = 0;
    for (String line in readInput(input)) {
      List<String> compartment = line.split('');
      Set<String> firstHalf =
          compartment.sublist(0, compartment.length ~/ 2).toSet();
      Set<String> secondHalf =
          compartment.sublist(compartment.length ~/ 2).toSet();

      sum += getPriority(firstHalf.intersection(secondHalf).first);
    }
    return sum;
  }

  int partTwo(String input) {
    int sum = 0;
    Set<String> groupItem = {};
    for (int i = 0; i < readInput(input).length; i++) {
      List<String> items = readInput(input)[i].split('');

      if (groupItem.isEmpty) {
        groupItem.addAll(items);
      } else {
        groupItem = groupItem.intersection(items.toSet());
      }

      // For last line in each third iteration
      if (i % 3 == 2) {
        sum += getPriority(groupItem.first);
        groupItem.clear();
      }
    }

    return sum;
  }

  int getPriority(String character) {
    final asciiValue = character.codeUnitAt(0);

    if (asciiValue >= 65 && asciiValue <= 90) {
      // A (Priority 1) -> Z (Priority 26)
      return (asciiValue - 64) + 26;
    } else if (asciiValue >= 97 && asciiValue <= 122) {
      // a (Priority 27) -> Z (Priority 52)
      return asciiValue - 96;
    }

    throw 'Could not parse character: $character';
  }
}
