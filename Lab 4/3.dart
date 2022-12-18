// Write a dart codeto generate a Fibonacciseries of N given numbersusing this method.
import 'dart:io';

class Fibo {
  static void series([int? number])
  {
    int prev=0,next=1,current=0;
    stdout.write(" 0 1");
    for (int i = 1; i <= number!; i++) {
      current=prev+next;
      stdout.write(" $current");
      prev=next;
      next=current;
    }
  }
}

void main(List<String> args) {
  Fibo.series(5);
}