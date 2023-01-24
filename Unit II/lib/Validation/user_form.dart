import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  // Form Key
  var _key = GlobalKey<FormState>();

  // Function for validate values
  String valuevalidate({required value}) {
    if (value == null || value.isEmpty) {
      return "Enter Value";
    }
    return "valid";
  }

  // Controller Variables

  var nameConroller = TextEditingController();

  // Build Method
  @override
  Widget build(BuildContext context) {
    print("object");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) => valuevalidate(value: value),
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
                TextFormField(
                  validator: (value) => valuevalidate(value: value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        Navigator.pushNamed(context, "/");
                      }
                    },
                    child: Text("Validate")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
