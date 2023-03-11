// To parse this JSON data, do
//
//     final student = studentFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Student> studentFromJson(String str) =>
    List<Student>.from(json.decode(str).map((x) => Student.fromJson(x)));

String studentToJson(List<Student> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Student {
  Student({
    required this.name,
    required this.avatar,
    required this.rollnumber,
    required this.email,
    required this.address,
    required this.id,
  });

  final String name;
  final String avatar;
  final int rollnumber;
  final String email;
  final String address;
  final String id;

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        name: json["name"],
        avatar: json["avatar"],
        rollnumber: json["rollnumber"],
        email: json["email"],
        address: json["address"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "avatar": avatar,
        "rollnumber": rollnumber,
        "email": email,
        "address": address,
        "id": id,
      };
}
