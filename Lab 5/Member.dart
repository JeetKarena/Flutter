/* Create a class named Memberhaving the following 
members: 
1-Name
2-Age
3-Phone number
4-Address
5-Salary
It also has a method named printDetails()
which prints the salary of the members. 
Two classes :  Employee and Manager inheritthe Memberclass.  
The Employee and Manager classes  have data   members specialization and department respectively.   
Now,   assign _name; age, phone_number, addressand salaryto an Employee and Manager by making an object of both of these classes and print the same along with specializationand departmentrespectively.
 */

abstract class Member {
  String? _name;
  int? _age;
  String? _phone_number;
  String? _address;
  int? _salary;

  // Member(
  //     {
  //     required String? _name;
  //     required String? age,
  //     required String? phone_number,
  //     required String? address,
  //     required String? salary}
  //     )
  //     {
  //       this.name=_name;
  //       this.age=age;
  //       this.salary=salary;
  //       this.phone_number=phone_number;
  //       this.address=address;
  //     }
  void printDetails() {
    print("Name : $_name");
    print("Age : $_age");
    print("Salary : $_salary");
    print("Phone Number : $_phone_number");
    print("Address : $_address");
  }

  void printSalary()
  {
    print("Salary : $_salary");
  }
}

class Employee extends Member {
  String? _specialization;

  Employee(
      {required String name,
      required int age,
      required String phone_number,
      required String address,
      required int salary,
      required String specialization
      }) {
    this._name = name;
    this._age = age;
    this._salary = salary;
    this._phone_number = phone_number;
    this._address = address;
    this._specialization=specialization;
  }
  @override
  void printDetails() {
    super.printDetails();
    print("Specialization : $_specialization");
  }

  @override
  void printSalary() {
    super.printSalary();
  }
}

class Manager extends Member{
  String? _department;
  Manager(
      {required String name,
      required int age,
      required String phone_number,
      required String address,
      required int salary,
      required String department
      }) {
    this._name = name;
    this._age = age;
    this._salary = salary;
    this._phone_number = phone_number;
    this._address = address;
    this._department=department;
  }
  @override
  void printDetails() {
    super.printDetails();
    print("Department : $_department");
  }

  @override
  void printSalary() {
    super.printSalary();
  }
}