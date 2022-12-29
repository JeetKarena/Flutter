/* Write a dart codeto find the factorialof the given number. */

import 'dart:io';

void main(List<String> args) {
  int factorial=1;
  stdout.write("Enter Number : ");
  int num=int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= num; i++) {
    factorial*=i;
  }
  print("Factorial Of $num Number is : $factorial");
}