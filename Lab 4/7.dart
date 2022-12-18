/* Write a dart codeto accept n numbers in an array. Display the sum of all the numbers which are divisible by either 3 or 5. */

import 'dart:io';
import 'dart:math';

class Count {
  int sum = 0;
  Count(List arr) {
    for (int element in arr) {
      if (element % 3 == 0 || element % 5 == 0) {
        sum += element;
      }
    }
    stdout.write("Sum is : $sum");
  }
}

void main(List<String> args) {
  List<int> l = [];
  int? ex;
  stdout.write("Enter an Element : ");
  ex=int.parse(stdin.readLineSync()!);
  do{
    l.add(ex!);
    stdout.write("Press -1 to Exit \n");
    stdout.write("Else Enter an Element TO Countinue : \n");
    ex=int.parse(stdin.readLineSync()!);
  }while(ex!=-1);
  Count(l);
}
