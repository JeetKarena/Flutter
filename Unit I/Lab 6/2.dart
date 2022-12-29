/* Write  a  dart  codeto  read  2  lists  and  return  a  list  that  contains  only  the  elements  that  are common between them */


import 'dart:io';
void main(List<String> args) {
  List<int> list1 = [];
  List<int> list2 = [];
  List<int> list3 = [];
  stdout.write("First List ! \n");
  for (var i = 0; i < 5; i++) {
    stdout.write("Enter ${i + 1} Element : ");
    list1.add(int.parse(stdin.readLineSync()!));
  }
  stdout.write("Second List ! \n");
  for (var i = 0; i < 5; i++) {
    stdout.write("Enter ${i + 1} Element : ");
    list2.add(int.parse(stdin.readLineSync()!));
  }
  list3=getComman(list1, list2);
  print(list3);
}

List<int> getComman(List<int> l1,List<int> l2) {
  List<int> commanList=[];
  for (var element in l1) {
      if(l1.contains(element)&& l2.contains(element))
      {
        commanList.add(element);
      }
  }
  return commanList;
}