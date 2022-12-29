/* Write a dart codeto check whether the given number is positive or negative. */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter A Number : ");
  double num=double.parse(stdin.readLineSync()!);
  print(num>0?"Number Is +Ve":num<0?"Number -Ve":"Number is Zero");
}