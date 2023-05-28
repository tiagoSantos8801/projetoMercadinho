// ignore_for_file: overridden_fields
import 'package:mercadinho_dona_marry/infra/container/drivers/abs_dirver.dart';

abstract class DriverBanco extends Driver {
  DriverBanco(TipificacaoPubDev tipoPub)
      : super([TipoDriver.BANCO_SQL], [tipoPub]);

  Future<dynamic> initDataBase();
  Future<dynamic> get database;
  execQuery(String sql, [List? params]);
}
