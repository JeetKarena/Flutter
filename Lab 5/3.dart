/* Write a dart codeto create a Circleclass with area() and perimeter() function to find area and perimeterof the circle. */
import 'dart:math';
class Circle {
  void area({double? r})
  {
    print("Area Of Circle is ${pi*pow(r!,2)}");
  }
  void perimeter({double? r})
  {
    print("Perimeter Of Circle is : ${2*pi*r!}");
  }
}

