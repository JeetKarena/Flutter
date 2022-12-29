import 'package:flutter/material.dart';
/* Write a flutter code to divide horizontal space of screen in 3 different equal parts with different colors */

class NineEq extends StatelessWidget {
  const NineEq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget> [
              Expanded(
                child: Row(
                  children: [
                  MyWidget(color: Colors.amber),
                  MyWidget(color: Colors.blue),
                  MyWidget(color: Colors.blueGrey),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                  MyWidget(color: Colors.brown),
                  MyWidget(color: Colors.cyan),
                  MyWidget(color: Colors.deepOrange),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                  MyWidget(color: Colors.deepPurple),
                  MyWidget(color: Colors.green),
                  MyWidget(color: Colors.grey),
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