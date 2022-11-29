/* Write a dart code to convert temperature from Fahrenheit to Celsius. */

import 'dart:io';

void main(List<String> args) {
  print("Enter temperature in fahrenheit : ");
  double fahrenheit=double.parse(stdin.readLineSync()!);
  double celsius=((fahrenheit-32)*5)/9;
  print(celsius.toStringAsFixed(3));
}