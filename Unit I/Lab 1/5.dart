/* Write a dart code that reads a number in meters, converts it to feet, and displays the result */
import 'dart:io';

void main(List<String> args) {
  print("Enter Meter : ");
  double meter=double.parse(stdin.readLineSync()!);
  double feet=meter*3.28084;
  print("$meter = $feet");
}