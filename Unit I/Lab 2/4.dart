/* Write  a  dart  codeto  read  marks  of  five  subjects.  Calculate  percentage  and  print  class accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First Class between 60 to 70, Distinction if more than 70 */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Subject One Marks : ");
  double marks1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Subject Two Marks : ");
  double marks2 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Subject Three Marks : ");
  double marks3 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Subject fourth Marks : ");
  double marks4 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Subject Fifth Marks : ");
  double marks5 = double.parse(stdin.readLineSync()!);
  double total = (marks5 + marks4 + marks3 + marks2 + marks1);
  double percentage = total / 5.0;
  if (percentage > 70 && percentage <= 100) {
    print(" Class: Distinction $percentage ");
  } else if (percentage >= 60 && percentage <= 70) {
    print("Class : First $percentage ");
  } else if (percentage < 60 && percentage >= 40) {
    print("Class : Second $percentage ");
  } else if (percentage < 40 && percentage >= 35) {
    print("Class : Pass  $percentage ");
  } else if (percentage < 35) {
    print(" Fail :( $percentage ");
  } else
    print("Please Enter Valid Marks !");
}
