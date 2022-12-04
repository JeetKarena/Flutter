/* Write a dart code to print the reversestring. */

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter A String : ");
  String str = stdin.readLineSync()!;
  String rev = "";
  for (var i = str.length-1; i >= 0; i--) {
    rev=rev+str[i];
  }
  print("ReverseString : $rev");
}
