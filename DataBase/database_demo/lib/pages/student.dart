import 'package:db_demo/db/db_helper.dart';
import 'package:db_demo/pages/homepage.dart';
import 'package:flutter/material.dart';

class StudentPage extends StatefulWidget {
  final bool isedit;
  final Map<String, dynamic>? obj;
  const StudentPage({super.key, required this.isedit, this.obj});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  var _key = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController rollnumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  @override
  void initState() {
    super.initState();
    nameController.text = widget.isedit ? widget.obj!["name"] : "";
    idController.text = widget.isedit ? widget.obj!["id"].toString() : "";
    rollnumberController.text =
        widget.isedit ? widget.obj!["rollnumber"].toString() : "";
    emailController.text = widget.isedit ? widget.obj!["email"].toString() : "";
    addressController.text =
        widget.isedit ? widget.obj!["address"].toString() : "";
  }

  @override
  void dispose() {
    nameController.dispose();
    idController.dispose();
    rollnumberController.dispose();
    emailController.dispose();
    addressController.dispose();
    super.dispose();
  }

  dynamic isvalid({required String? value}) {
    if (value == null || value.isEmpty) {
      return "Enter Value";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isedit ? "Edit student Deatil" : "Add Student"),
      ),
      body: Center(
        child: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) => isvalid(value: value),
                  decoration: const InputDecoration(label: Text("Name")),
                ),
                TextFormField(
                  controller: idController,
                  validator: (value) => isvalid(value: value),
                  decoration: const InputDecoration(label: Text("id")),
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) => isvalid(value: value),
                  decoration: const InputDecoration(label: Text("Emial")),
                ),
                TextFormField(
                  controller: rollnumberController,
                  validator: (value) => isvalid(value: value),
                  decoration: const InputDecoration(label: Text("Rllnumber")),
                ),
                TextFormField(
                  controller: addressController,
                  validator: (value) => isvalid(value: value),
                  decoration: const InputDecoration(label: Text("Address")),
                ),
                ElevatedButton(
                    onPressed: () async {
                      Map<String, dynamic> obj = {
                        "name": nameController.text,
                        "id": idController.text,
                        "email": emailController.text,
                        "address": addressController.text,
                        "rollnumber": int.parse(rollnumberController.text)
                      };
                      if (_key.currentState!.validate()) {
                        widget.isedit
                            ? await DataBaseHelper().updateStudent(obj: obj)
                            : await DataBaseHelper().insertstudent(obj: obj);
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            )).then((value) {
                          setState(() {});
                          Navigator.pop(context);
                          Navigator.pop(context);
                        });
                      }
                    },
                    child:
                        Text(widget.isedit ? "Edit Student" : "add STudent")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
