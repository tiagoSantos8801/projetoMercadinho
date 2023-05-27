// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:mercadinho_dona_marry/controller/data/schema_espacialization/schema_sqflite.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/especialization_dirver/abs_drive_banco.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB extends DriverBanco {
  DB._();

  static final DB instance = DB._();
  static Database? _database;

  @override
  get database async {
    if (_database != null) return _database!;

    return await _initDataBase();
  }

  Future<Database> _initDataBase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'mercadinho_marry.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  @override
  Future<List<Map<String, Object?>>> execQuery(String sql,
      [List<Object?>? arguments]) {
    return DB._database!.rawQuery(sql,arguments);
  }

  _onCreate(db, versao) async => SchemaDataBaseSQFlite().schema()
      .forEach((script) async => await db.execute(script));
}
