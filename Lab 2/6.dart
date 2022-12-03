/* Write a dart codeto make a Simple Calculator using switch...case. */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Number 1 : ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Number 2 : ");
  double num2 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter ( + , - , * , / , % ) : ");
  String op = stdin.readLineSync()!;

  switch (op) {
    case "+":
      print("Sum. of $num1 And $num2 is : ${num1 + num2}");
      break;
    case "-":
      print("Sub. of $num1 And $num2 is : ${num1 - num2}");
      break;
    case "*":
      print("Mul. of $num1 And $num2 is : ${num1 * num2}");
      break;
    case "/":
      print("Div. of $num1 And $num2 is : ${num1 / num2}");
      break;
    case "%":
      print("Mod. of $num1 And $num2 is : ${num1 % num2}");
      break;
    default:
      print("Enter a Valid Opration");
  }
}
