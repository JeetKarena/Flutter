/* Write a dart code to count the number of even or odd numbers from an array of n numbers. */

import 'dart:io';
class Count {
  static void countEvenOdd(List arr) {
    int odd = 0, even = 0;
    for (var element in arr) {
      if (element & 1 == 1)
        odd++;
      else
        even++;
    }
    stdout.write("Number of Even : $even Number of Odd : $odd");
  }
}
void main(List<String> args) {
  List<int> l=[];
  l.add(1);
  l.add(2);
  l.add(3);
  l.add(4);
  l.add(5);
  l.add(6);
  l.add(9);
  Count.countEvenOdd(l);
}