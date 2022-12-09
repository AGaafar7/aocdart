import 'package:aocdart/utils.dart';

class Day06 {
  int partOne(String input) {
    int result = 0;
    String data = readInputAsStringSync(input);
    int markerLen = 4;
    for (int i = 0; i + markerLen - 1 < data.length; ++i) {
      if (data.substring(i, i + markerLen).split('').toSet().length ==
          markerLen) {
        result = (i + markerLen);
        break;
      }
    }
    return result;
  }

  int partTwo(String input) {
    int resultTwo = 0;
    String data = readInputAsStringSync(input);
    int markerLen = 14;
    for (int i = 0; i + markerLen - 1 < data.length; ++i) {
      if (data.substring(i, i + markerLen).split('').toSet().length ==
          markerLen) {
        resultTwo = (i + markerLen);
        break;
      }
    }
    return resultTwo;
  }
}
