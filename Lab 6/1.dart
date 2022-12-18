/* Write a dart codethat prompts the user to enter 5 numbers, stores them in a List, and displays them in increasing order. */
import 'dart:io';

void main(List<String> args) {
  List<int> list = [];
  for (var i = 0; i < 5; i++) {
    stdout.write("Enter ${i + 1} Element : ");
    list.add(int.parse(stdin.readLineSync()!));
  }
  list.sort(((a, b) => a.compareTo(b)));
  print(list);
}
