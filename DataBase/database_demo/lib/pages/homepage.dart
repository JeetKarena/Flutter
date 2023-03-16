import 'package:db_demo/db/db_helper.dart';
import 'package:flutter/material.dart';
import './student.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("APi Home Page")),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentPage(
                              isedit: true, obj: snapshot.data![index]),
                        ));
                  },
                  leading: CircleAvatar(),
                  title: Text(snapshot.data![index]["name"]),
                  subtitle: Row(
                    children: [
                      Text(snapshot.data![index]["email"]),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      DataBaseHelper()
                          .deleteStudent(id: snapshot.data![index]["id"]);
                      setState(() {});
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            );
          }
        },
        future: DataBaseHelper().getallStudent(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentPage(isedit: false),
              ));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
