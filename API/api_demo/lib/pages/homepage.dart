import 'package:api_demo/model/student.dart';
import 'package:api_demo/pages/studentpage.dart';
import 'package:api_demo/services/remoteservices.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Home Page"),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator.adaptive(
                semanticsLabel: "Loading Data",
              ),
            );
          } else {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data![index].avatar),
                  ),
                  title: Text(snapshot.data![index].name),
                  trailing: IconButton(
                    onPressed: () {
                      RemoteServices.deleteStudent(
                          id: snapshot.data![index].id);
                      setState(() {});
                    },
                    icon: const Icon(Icons.delete),
                  ),
                  subtitle: Text("Email : ${snapshot.data![index].email}"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentPage(
                        isedit: true,
                        obj: snapshot.data![index],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
        future: RemoteServices.getAllStudent(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StudentPage(isedit: false),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
