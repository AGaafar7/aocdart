import 'dart:io';
export 'package:aocdart/utils.dart';

List<String> readInput(String name) =>
    File("lib/inputs/$name.txt").readAsLinesSync();

String readInputAsStringSync(String name) =>
    File("lib/inputs/$name.txt").readAsStringSync();
