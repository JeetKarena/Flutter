import 'package:database_demo/pages/homepage.dart';
import 'package:flutter/material.dart';
import '../db/db_helper.dart';

class StudentPage extends StatefulWidget {
  final bool isedit;
  final Map<String, dynamic>? obj;
  const StudentPage({super.key, required this.isedit, this.obj});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  var _key = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController idController;
  late TextEditingController rollNumberController;
  late TextEditingController emailController;
  late TextEditingController addressController;
  @override
  void initState() {
    nameController = TextEditingController();
    idController = TextEditingController();
    rollNumberController = TextEditingController();
    emailController = TextEditingController();
    addressController = TextEditingController();
    super.initState();
    widget.isedit ? nameController.text = widget.obj!["name"] : "";
    widget.isedit ? idController.text = widget.obj!["id"].toString() : "";
    widget.isedit
        ? rollNumberController.text = widget.obj!["rollnumber"].toString()
        : "";
    widget.isedit ? emailController.text = widget.obj!["email"] : "";
    widget.isedit ? addressController.text = widget.obj!["address"] : "";
  }

  @override
  void dispose() {
    nameController.dispose();
    idController.dispose();
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isedit ? "Edit Student Detail" : "Add Studnet"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
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
                  controller: idController,
                  validator: (value) => onValidate(value: value),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    labelText: "ID",
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
                    Map<String, dynamic> map = {
                      "name": nameController.text,
                      "id": idController.text,
                      "rollnumber": int.parse(rollNumberController.text),
                      "email": emailController.text,
                      "address": addressController.text,
                    };
                    var db = DataBaseHelper.instance;
                    if (_key.currentState!.validate()) {
                      widget.isedit
                          ? db.updateStudent(obj: map)
                          : db.insertStudent(obj: map);
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
