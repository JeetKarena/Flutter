/* Write a dart codeto find whether the given number is prime or not */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter A Number : ");
  int num=int.parse(stdin.readLineSync()!);
  bool isprime=true;
  for (int i = 2; i < num; i++) {
    if (num%i==0) {
      isprime=false;
      break;
    }
  }
  print(isprime?"Numebr is Prime":"Number Is Not Prime ");
}