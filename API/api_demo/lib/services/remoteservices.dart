import 'dart:convert';
import 'dart:developer';

import 'package:api_demo/model/student.dart';
import 'package:api_demo/utils.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var httpClient = http.Client();

  // All Method For Student Model Rest Api

  static Future<List<Student>> getAllStudent() async {
    var res = await httpClient.get(APIURL);
    if (res.statusCode == 200) {
      return studentFromJson(res.body);
    }
    return [];
  }

  static Future<List<Student>> getStudentById({required String id}) async {
    var res = await httpClient.get(Uri.parse('$APIURL/$id'));
    if (res.statusCode == 200) {
      return studentFromJson(res.body);
    }
    return [];
  }

  static Future<List<Student>> createStudent({required map}) async {
    var _payload = jsonEncode(map);
    var res = await httpClient.post(APIURL, body: _payload, headers: Headers);
    if (res.statusCode == 200) {
      return studentFromJson(res.body);
    }
    return [];
  }

  static Future<List<dynamic>> updateStudent(
      {required Map<String, dynamic> map, required String id}) async {
    var _payload = jsonEncode(map);

    var res = await httpClient.put(Uri.parse('$APIURL/$id'),
        body: _payload, headers: Headers);

    if (res.statusCode == 200) {
      return ["Student is Updated"];
    }

    return [];
  }

  // Delete Method For Delete Student
  static Future<List<dynamic>> deleteStudent({required String id}) async {
    var res = await httpClient.delete(Uri.parse('$APIURL/$id'));
    if (res.statusCode == 200) {
      return ["student is Deleted"];
    }
    return [];
  }
}
