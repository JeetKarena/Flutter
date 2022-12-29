import 'package:flutter/material.dart';

class NineDiff extends StatelessWidget {
  const NineDiff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            children: <Widget> [
              Expanded(
                child: Column(
                  children: [
                  MyWidget(color: Colors.amber),
                  MyWidget(color: Colors.blue),
                  MyWidget(color: Colors.blueGrey),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                  MyWidget(color: Colors.brown,flex: 3),
                  MyWidget(color: Colors.cyan,flex: 2),
                  MyWidget(color: Colors.deepOrange),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                  MyWidget(color: Colors.deepPurple),
                  MyWidget(color: Colors.green,flex: 3),
                  MyWidget(color: Colors.grey,flex: 2),
                  ],
                ),
              ),
            ],
        ),
    );
  }
}
Widget MyWidget({flex=1,required MaterialColor color})
{
    return Expanded(flex: flex,child: Container(color: color,),);
}