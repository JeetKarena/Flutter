import 'package:database_demo/db/db_helper.dart';
import 'package:database_demo/pages/studentpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Database"),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    print(snapshot.data![index]["id"].toString());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentPage(
                              isedit: true, obj: snapshot.data![index]),
                        ));
                  },
                  leading: const CircleAvatar(),
                  title: Text(
                    snapshot.data![index]["name"],
                  ),
                  subtitle: Text(
                    snapshot.data![index]["email"],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            );
          }
        },
        future: DataBaseHelper.instance.getAllStudents(),
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
