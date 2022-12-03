/* Write a dart codeto find out the largestnumber from the given3 numbers using the conditionaloperator */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Number 1 : ");
  double num1=double.parse(stdin.readLineSync()!);
  stdout.write("Enter Number 2 : ");
  double num2=double.parse(stdin.readLineSync()!);
  stdout.write("Enter Number 3 : ");
  double num3=double.parse(stdin.readLineSync()!);
  if (num1>num2 && num1>num3) {
    print("$num1 is Largest");
  }
  else if(num2>num1 && num2 >num3)
  {
    print("$num2 is Largest");
  }
  else
  {
    print("$num3 is Largest");
  }
}