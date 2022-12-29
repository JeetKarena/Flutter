/* Create   a   class   named Candidate with Candidate_ID, Candidate_Name, Candidate_Age, Candidate_Weightand Candidate_Height as     data     members. Create     a     method GetCandidateDetails()  and DisplayCandidateDetails(). Create a main method to demonstrate the Candidate class. */

class Candidate {
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  int? Candidate_Weight;
  int? Candidate_Height;

  // getter method for get candidate details
  void GetCandidateDetails({
    int? Candidate_ID,
    String? Candidate_Name,
    int? Candidate_Age,
    int? Candidate_Weight,
    int? Candidate_Height,
  }) {
    this.Candidate_Name = Candidate_Name;
    this.Candidate_Age = Candidate_Age;
    this.Candidate_ID = Candidate_ID;
    this.Candidate_Height = Candidate_Height;
    this.Candidate_Weight = Candidate_Weight;
  }

  // DisplayCandidateDetails Method
  void DisplayCandidateDetails() {
    print("Candidate Name : $Candidate_Name");
    print("Candidate Age : $Candidate_Age");
    print("Candidate ID : $Candidate_ID");
    print("Candidate's Height : $Candidate_Height");
    print("Candidate's Weight : $Candidate_Weight");
  }
}

void main(List<String> args) {
  Candidate one = Candidate();
  one
    ..GetCandidateDetails(
        Candidate_ID: 1,
        Candidate_Name: "hello",
        Candidate_Height: 72,
        Candidate_Age: 19,
        Candidate_Weight: 60)
    ..DisplayCandidateDetails();
}
