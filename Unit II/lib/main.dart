import 'package:flutter/material.dart';
import 'package:lab/Lab 7/horizontal_equal_parts.dart';
import 'package:lab/Lab 7/nine_diff_parts.dart';
import 'package:lab/Lab 7/nine_eq_parts.dart';
import 'package:lab/Lab 7/verical_eq_parts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Place porper sceen as per needed
      home: NineDiff(),
      debugShowCheckedModeBanner: false,
    );
  }
}
