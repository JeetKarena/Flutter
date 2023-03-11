import 'package:api_demo/model/student.dart';
import 'package:api_demo/pages/homepage.dart';
import 'package:api_demo/services/remoteservices.dart';
import 'package:flutter/material.dart';

class StudentPage extends StatefulWidget {
  final bool isedit;
  final Student? obj;
  const StudentPage({super.key, required this.isedit, this.obj});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  // Key For validation
  var _key = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController imageurlController;
  late TextEditingController rollNumberController;
  late TextEditingController emailController;
  late TextEditingController addressController;
  @override
  void initState() {
    nameController = TextEditingController();
    imageurlController = TextEditingController();
    rollNumberController = TextEditingController();
    emailController = TextEditingController();
    addressController = TextEditingController();
    super.initState();
    widget.isedit ? nameController.text = widget.obj!.name : "";
    widget.isedit ? imageurlController.text = widget.obj!.avatar : "";
    widget.isedit
        ? rollNumberController.text = widget.obj!.rollnumber.toString()
        : "";
    widget.isedit ? emailController.text = widget.obj!.email : "";
    widget.isedit ? addressController.text = widget.obj!.address : "";
  }

  @override
  void dispose() {
    nameController.dispose();
    imageurlController.dispose();
    rollNumberController.dispose();
    emailController.dispose();
    addressController.dispose();
    super.dispose();
  }

  dynamic onValidate({required value}) {
    if (value == null || value.isEmpty) {
      return "Enter Value";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.isedit ? "Edit Student Detail" : "Add Studnet"),
        ),
        body: Center(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) => onValidate(value: value),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    labelText: "Name",
                  ),
                ),
                TextFormField(
                  controller: imageurlController,
                  validator: (value) => onValidate(value: value),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    labelText: "Image URl",
                  ),
                ),
                TextFormField(
                  controller: rollNumberController,
                  validator: (value) => onValidate(value: value),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    labelText: "RollNumber",
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) => onValidate(value: value),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
                TextFormField(
                  controller: addressController,
                  validator: (value) => onValidate(value: value),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    labelText: "Addresss",
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // var student = Student(
                    //     name: nameController.text,
                    //     avatar: imageurlController.text,
                    //     rollnumber: int.parse(rollNumberController.text),
                    //     email: emailController.text,
                    //     address: addressController.text,
                    //     id: "");
                    Map<String, dynamic> map = {
                      "name": nameController.text,
                      "avatar": imageurlController.text,
                      "rollnumber": int.parse(rollNumberController.text),
                      "email": emailController.text,
                      "address": addressController.text,
                    };
                    // var map = studentToJson([student]);
                    if (_key.currentState!.validate()) {
                      widget.isedit
                          ? await RemoteServices.updateStudent(
                              map: map, id: widget.obj!.id)
                          : await RemoteServices.createStudent(map: map);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(widget.isedit
                              ? "Student Updated successfully"
                              : "Stuednt Added successfully"),
                        ),
                      );
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ))
                          .then((value) => setState(() {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              }));
                    }
                  },
                  child: Text(
                      widget.isedit ? "Update Student Detail" : "Add Student"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
