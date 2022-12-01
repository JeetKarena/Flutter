/* Write a dart codeto perform Addition, Subtraction, Multiplication, Division based on user choice using if, if..else..if, & switch */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Number 1 : ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Number 2 : ");
  double num2 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter ( + , - , * , / , % ) : ");
  String op = stdin.readLineSync()!;

// Using If Else

  if (op == "+") {
    print("Sum. of $num1 And $num2 is : ${num1 + num2}");
  } else if (op == "-") {
    print("Sub. of $num1 And $num2 is : ${num1 - num2}");
  } else if (op == "*") {
    print("Mul. of $num1 And $num2 is : ${num1 * num2}");
  } else if (op == "/") {
    print("Div. of $num1 And $num2 is : ${num1 / num2}");
  } else if (op == "%") {
    print("Mod. of $num1 And $num2 is : ${num1 % num2}");
  } else {
    print("Enter a Valid Opration");
  }

  // Using Switch Case

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
