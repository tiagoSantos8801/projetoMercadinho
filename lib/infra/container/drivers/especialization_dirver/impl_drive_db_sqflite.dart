// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:mercadinho_dona_marry/controller/data/schema_espacialization/schema_sqflite.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/abs/abs_dirver.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/abs/abs_drive_banco.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQFliteDrive extends DriverBanco {
  SQFliteDrive._() : super(TipificacaoPubDev.sqflite);

  static final SQFliteDrive instance = SQFliteDrive._();
  static Database? _database;

  @override
  get database async {
    if (_database != null) return _database!;

    return await initDataBase();
  }

  Future<Database> initDataBase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'mercadinho_marry.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  @override
  Future<List<Map<String, Object?>>> execQuery(String sql,
      [List<Object?>? arguments]) {
    return SQFliteDrive._database!.rawQuery(sql, arguments);
  }

  _onCreate(db, versao) async => SchemaDataBaseSQFlite()
      .schema()
      .forEach((script) async => await db.execute(script));
}
