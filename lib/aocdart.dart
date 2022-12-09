///Takes in a class and the name of the input file
dynamic runDay(dynamic day, String input) {
  return [day.partOne(input), day.partTwo(input)];
}
