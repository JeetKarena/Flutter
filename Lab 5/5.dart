/* Create a class named Memberhaving the following members:1-Name2-Age3-Phone number4-Address5-SalaryIt also has a method named printSalary()which prints the salary of the members. Two classes Employeeand Managerinheritthe Memberclass.  The Employeeand Managerclasses  have data   membersspecializationand departmentrespectively.   Now,   assign name, age, phone_number, addressand salaryto an Employee and Manager by making an object of both of these classes and print the same along with specializationand departmentrespectively.
 */
import 'Member.dart';

void main(List<String> args) {
  Employee emp1=Employee(name: "abc", age: 12, phone_number: "1234567890", address: "abc, street ", salary: 1234, specialization: "betch");
  emp1.printDetails();
  
}