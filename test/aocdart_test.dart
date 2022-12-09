import 'package:aocdart/aocdart.dart';
import 'package:aocdart/days/days.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(runDay(Day01(), "day01"), [72478, 210367]);
  });
}
