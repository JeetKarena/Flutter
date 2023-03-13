import 'package:database_demo/db/db_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
                  leading: const CircleAvatar(),
                  title: Text(
                    snapshot.data![index]["name"],
                  ),
                  subtitle: Text(
                    snapshot.data![index]["email"],
                  ),
                );
              },
            );
          }
        },
        future: DataBaseHelper.instance.getAllStudents(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
