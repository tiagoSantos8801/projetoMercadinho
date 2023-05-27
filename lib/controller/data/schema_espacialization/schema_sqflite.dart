import 'package:mercadinho_dona_marry/controller/data/abs_schema.dart';

class SchemaDataBaseSQFlite extends SchemaDataBase {
  List<String> _schema = [];

  @override
  List<String> schema() =>
      _schema = [_cliente, _endereco, _produto, _pendencia];

  final String _cliente = '''
    CREATE TABLE Cliente (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      sobrenome TEXT,
      telefone TEXT,
      situacao TEXT
    );
  ''';

  final String _endereco = '''
    CREATE TABLE Endereco (
      id INTEGER PRIMARY KEY,
      rua TEXT,
      bairro TEXT,
      numero TEXT,
      FOREIGN KEY (id)
       references Cliente(id) 
       ON DELETE CASCADE
       ON UPDATE CASCADE
    );
  ''';

  final String _produto = '''
    CREATE TABLE Produto (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      tipo_operacao TEXT,
      descricao TEXT,
      valor REAL
    );
  ''';

  final String _pendencia = '''
    CREATE TABLE Pendencia (
      id_cli INTEGER PRIMARY KEY,
      id_pro INTEGER,
      descricao TEXT,
      FOREIGN KEY (id_pro)
        references Produto(id),
      FOREIGN KEY (id_cli)
        references Cliente(id) 
        ON DELETE CASCADE
        ON UPDATE CASCADE
    );
  ''';
}
