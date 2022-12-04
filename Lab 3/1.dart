/* Write a dart codeto print numbers between two given numbers which are divisibleby 2 but not divisible by 3. */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Starting Number : ");
  int start = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Ending Number : ");
  int end = int.parse(stdin.readLineSync()!);
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      stdout.write(" $i ");
    }
  }
}
