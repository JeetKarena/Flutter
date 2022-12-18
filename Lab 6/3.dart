/* Write a dart codethat creates a Listwith the following values: "Delhi", "Mumbai", "Bangalore", "Hyderabad"and "Ahmedabad". Replace "Ahmedabad"with "Surat"in the above List. */

void main(List<String> args) {
  List<String> l=["Delhi", "Mumbai", "Bangalore", "Hyderabad","Ahmedabad"];
  print(l);
  l[l.indexOf("Ahmedabad")]="Surat";
  print(l);
}