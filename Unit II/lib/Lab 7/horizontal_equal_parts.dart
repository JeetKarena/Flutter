import 'package:flutter/material.dart';
/* Write a flutter code to divide horizontal space of screen in 3 different equal parts with different colors */

class Horizontal extends StatelessWidget {
  const Horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget> [
                MyWidget(color: Colors.red),
                MyWidget(color: Colors.blue),
                MyWidget(color: Colors.green),
            ],
        ),
    );
  }
}
Widget MyWidget({flex=1,required MaterialColor color})
{
    return Expanded(flex: flex,child: Container(color: color,),);
}