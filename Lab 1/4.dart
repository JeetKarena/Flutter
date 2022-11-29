/* Write a dart code to find the percentage of 5 subjects. */

import 'dart:io';

void main(List<String> args) {
  print("Enter Five Marks Space Seprated : ");
  var marks=stdin.readLineSync();
  var markarr=marks!.split(RegExp(r'\s+'));
  var subjects1=int.parse(markarr.elementAt(0));
  var subjects2=int.parse(markarr.elementAt(1));
  var subjects3=int.parse(markarr.elementAt(2));
  var subjects4=int.parse(markarr.elementAt(3));
  var subjects5=int.parse(markarr.elementAt(4));
  double percentage=((subjects1+subjects2+subjects3+subjects4+subjects5)/5.0);
  print("Your Percenteage is $percentage");
}