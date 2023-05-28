// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names

enum TipoDriver {
  BANCO_SQL,
  BANCO_NO_SQL,
  CONNECTION,
  CACHE,
}

enum TipificacaoPubDev {
  //armazenamento
  sqflite,
  shared_preferences,

  //conexao
  http,

  //Sistema
  path,

  //Gerenciamento de estado
  flutter_bloc,
}

abstract class Driver {
  List<TipoDriver> tipoDrive;
  List<TipificacaoPubDev> tipificPub;

  Driver(this.tipoDrive, this.tipificPub);
}
