/* Create a class named Bank_Accountwith Account_No, User_Name, Email, Account_Type, and Account_Balanceas   data   members.   Also   create   a   method GetAccountDetails()   and DisplayAccountDetails(). Create a main method to demonstrate the Bank_Accountclass. */

class Bank_Account {
  int? Account_No;
  String? User_Name;
  String? Email;
  String? Account_Type;
  double? Account_Balanceas;
  void GetAccountDetails({
    required int Account_No,
    required String User_Name,
    required String Email,
    required String Account_Type,
    required double Account_Balanceas,
  }) {
    this.Account_No = Account_No;
    this.User_Name = User_Name;
    this.Account_Type = Account_Type;
    this.Email = Email;
    this.Account_Balanceas = Account_Balanceas;
  }

  void DisplayAccountDetails() {
    print("Account No : $Account_No");
    print("User Name : $User_Name");
    print("Email :  $Email");
    print("Account Type : $Account_Type");
    print("Account Balanceas : $Account_Balanceas");
  }
}

void main(List<String> args) {
  Bank_Account person = Bank_Account();
  person
    ..GetAccountDetails(
        Account_No: 123,
        User_Name: "ABC",
        Email: "ABC@xyz.com",
        Account_Type: "Savings",
        Account_Balanceas: 12365)
    ..DisplayAccountDetails();
}
