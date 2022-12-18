/* Write  a  dart  codeto  accept  a  number  and  check  whether  the  number  is  prime  or  not.  Use method name check (int n). The method returns 1, if the number is prime otherwise, it returns 0 */

import 'dart:io';

int check(int n) {
  return n % 2 == 0 ? 0 : 1;
}

void main(List<String> args) {
  stdout.write("Enter Number : ");
  int number = int.parse(stdin.readLineSync()!);

  if (check(number) == 1) {
    stdout.write("Number is Prime");
  } else {
    stdout.write("Number is Not Prime");
  }
}
