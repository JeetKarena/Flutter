import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

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
    await copyPasteAssetFileToRoot();
    _dataBase = await _initDatabase();
    return _dataBase;
  }

  Future<Database> _initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    // Replcae Your Database Name Here
    String databasePath = join(appDocDir.path, 'temp.db');
    return await openDatabase(databasePath);
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    // Replcae Your Database Name Here
    String path = join(documentsDirectory.path, "Demo.db");

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
}
