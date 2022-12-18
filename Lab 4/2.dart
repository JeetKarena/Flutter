/* Write a dart codeto find the maximumnumber from twonumbers using this method */

class MaxNum {
    static double max({required double num1,required double num2})
    {
      return num1>num2?num1:num2;
    }
    static double maxover(double? num1,double? num2,[double p1=10,double p2=20])
    {
      return num1!;
    }
}

void main(List<String> args) {
  print(MaxNum.max(num1: 10, num2: 12));
}