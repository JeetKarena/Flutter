import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
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
          if (!snapshot.hasData || snapshot.hasError) {
            return const CircularProgressIndicator.adaptive(
              semanticsLabel: "Loading Data",
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("hello"),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
