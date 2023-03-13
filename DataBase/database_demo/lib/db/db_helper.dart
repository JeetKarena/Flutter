import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/* 
    For Access Database in same file we Use
    var db = instance.dataBase;
    
    For Access Database in outer files we Use
    var db = DatabaseHelper.instance;

 */

class DataBaseHelper {
  // database Veraible For getter
  static var _dataBase;

  // _private Constructor For Mantaining single instance All Over Program
  DataBaseHelper._privateConstructor();
  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

  Future<Database> get dataBase async {
    if (_dataBase != null) {
      return _dataBase;
    }
    // Call Only First Time When App runes
    // and then comment down it => copyPasteAssetFileToRoot();
    await copyPasteAssetFileToRoot();
    _dataBase = await _initDatabase();
    return _dataBase;
  }

  Future<Database> _initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    // Replcae Your Database Name Here
    String databasePath = join(appDocDir.path, 'temp.db');
    log("Database is init.");
    return await openDatabase(databasePath, version: 1);
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    log("Assets Db is Copying");
    // Replcae Your Database Name Here
    String path = join(documentsDirectory.path, "temp.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      // Replcae Your Database File Name Insted Of temp.db
      ByteData data = await rootBundle.load(join('assets/database', 'temp.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future<List<Map<String, dynamic>>> getAllStudents() async {
    Database db = await instance.dataBase;
    var res = await db.rawQuery("select * from student");
    return res;
  }
}
