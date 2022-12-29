/* Write  a  dart  codeto  find  out  the  largest  number  from  three  numbers  without  using  Logical Operator */

import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  stdout.write("Enter Number 1 : ");
  double num1=double.parse(stdin.readLineSync()!);
  stdout.write("Enter Number 2 : ");
  double num2=double.parse(stdin.readLineSync()!);
  stdout.write("Enter Number 3 : ");
  double num3=double.parse(stdin.readLineSync()!);
  // Using ternary
  print("Larget Number is ${num1>num2?num1>num3?"$num1":"$num3":num2>num3?"$num2":"$num3"}");
  // Using Math lib.
  print("Larget Number is ${max(num1,max(num2,num3))}");
}