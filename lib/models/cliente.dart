// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:mercadinho_dona_marry/models/endereco.dart';

class Cliente {
  final int id = 0;
  final String? nome;
  final String? sobrenome;
  final String? telefoneContato;
  final Endereco? endereco;

  Cliente({
    this.nome,
    this.sobrenome,
    this.telefoneContato,
    this.endereco,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'sobrenome': sobrenome,
      'telefoneContato': telefoneContato,
      'endereco': endereco?.toMap(),
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      nome: map['nome'] != null ? map['nome'] as String : null,
      sobrenome: map['sobrenome'] != null ? map['sobrenome'] as String : null,
      telefoneContato: map['telefoneContato'] != null
          ? map['telefoneContato'] as String
          : null,
      endereco: map['endereco'] != null
          ? Endereco.fromMap(map['endereco'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cliente.fromJson(String source) =>
      Cliente.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant Cliente other) {
    if (identical(this, other)) return true;

    return other.nome == nome &&
        other.sobrenome == sobrenome &&
        other.telefoneContato == telefoneContato &&
        other.endereco == endereco;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        sobrenome.hashCode ^
        telefoneContato.hashCode ^
        endereco.hashCode;
  }

  @override
  String toString() {
    return 'Cliente(nome: $nome, sobrenome: $sobrenome, telefoneContato: $telefoneContato, endereco: $endereco)';
  }
}
