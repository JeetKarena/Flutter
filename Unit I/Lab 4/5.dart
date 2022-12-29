/* Write a dart codethat calculates area of circle, triangle and square using method overloading. */

import 'dart:io';
import 'dart:math';
class Find {
  static void area({double? circleR,double? triangleHeight,double? triangleBase,double? squareaSide}){
    if (circleR!=null) {
      stdout.write("Area Of  Circle : ${pi*pow(circleR,2)}");
    } else if(squareaSide!=null){
      stdout.write("Area Of Square is : ${squareaSide*squareaSide}");
    }
    else if(triangleHeight!=null && triangleBase!=null)
    {
      stdout.write("Area OF Trinaglle is ${(0.5*triangleHeight*triangleBase)}");
    }else {
      stdout.write("Please Provide Valid Argument");
    }
  }
}