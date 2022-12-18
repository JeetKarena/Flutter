/* Using namedparameter, positionalparameter, defaultparameter only */
class intrest {
  // static double? p, i, n;
  //  positionalparameter
  void getspi(double p,double i, double n)
  {
    double inteRest=(p*i*n)/100.0;
    print("Your Simple Intrest is : $inteRest");
  }
  // Using namedparameter
  static void Sip({p:double ,i:double,n:double})
  {
    double inteRest=(p*i*n)/100.0;
    print("Your Simple Intrest is : $inteRest");
  }
  // Using default parameter
  static void getSpi([double? r=0,double? p=0,double? i=0])
  {
    double inteRest=(p!*i!*r!)/100.0;
    print("Your Simple Intrest is : $inteRest");
  }
}
/* Write a dart codeto calculate simple interest using a method. */
void main(List<String> args) {
  // intrest s=intrest();
  // s.getspi(65000.0,15.0,2.0);
  intrest.Sip(p: 65000,i: 15,n: 2);
}