/* Body  Mass  Index  (BMI) is  a  measureof  health  on  weight.  It  can  be  calculated  by  taking  your weight in kilograms and dividing by the squareof your height in meters. Write a dart code that prompts the user to enter a weight in pounds and height in inches and display the BMI */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Height In Meter : ");
  double height=double.parse(stdin.readLineSync()!);
  stdout.write("Enter weight In kilograms : ");
  double weight=double.parse(stdin.readLineSync()!);
  double BMI=weight/(height*height);
  print("Your BMI IS : ${BMI.toStringAsFixed(3)}");
}