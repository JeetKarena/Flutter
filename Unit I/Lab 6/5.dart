/* Write  a  dart  codeto get  the  currentdate from  the  systemand  format  into  different  date formats. Ex. dd/MM/yyyy, dd-MM-yyyy, dd-MMM-yyyy, dd-MM-yy, dd MMM yyyy,etc */
import './utils.dart';
void main(List<String> args) {
    print(Util().getFormate(format: "dd-MMM-yyyy")); 
    print(Util().getFormate(format: "dd MMM yyyy")); 
}