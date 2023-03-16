import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DataBaseHelper {
  static var _database;

  Future<Database> getdatabase() async {
    if (_database != null) {
      return _database;
    }
    log("Database is loading");
    await copyPasteAssetFileToRoot();
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'temp.db');
    return await openDatabase(databasePath);
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "temp.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data = await rootBundle.load(join('assets/database', 'temp.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future<List<Map<String, dynamic>>> getallStudent() async {
    var db = await DataBaseHelper().getdatabase();
    var res = await db.query("student");
    return res;
  }

  Future<int> insertstudent({required obj}) async {
    var db = await DataBaseHelper().getdatabase();
    var res = await db.insert("student", obj);
    return res;
  }

  Future<int> updateStudent({required obj}) async {
    var db = await DataBaseHelper().getdatabase();
    var res =
        await db.update("student", obj, where: "id=?", whereArgs: [obj["id"]]);
    return res;
  }

  Future<int> deleteStudent({required id}) async {
    var db = await DataBaseHelper().getdatabase();
    var res = await db.delete("student", where: "id=?", whereArgs: [id]);
    return res;
  }
}
