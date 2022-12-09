import 'package:aocdart/aocdart.dart' as aocdart;
import 'package:aocdart/days/days.dart';

void main(List<String> arguments) {
  //Add your input file in inputs folder and day class in days folder
  //and remember to export them in days.dart

  //printing the runDay function which takes the day class containing part one
  //and part two and the name of input file
  print('${aocdart.runDay(Day06(), "day06")}');
}
