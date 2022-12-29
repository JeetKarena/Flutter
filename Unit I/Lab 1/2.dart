/* Write a dart code to print the addition of 2 numbers. */
import 'dart:io';

void main(List<String> args) {
  print("Enter First Number : ");
  int num1=int.parse(stdin.readLineSync()!);
  print("Enter Second Number : ");
  int num2=int.parse(stdin.readLineSync()!);
  int sum=num1+num2;
  print("Sum of $num1 + $num2 is : $sum");
}