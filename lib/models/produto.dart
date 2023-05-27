// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Produto {
  String id = 0.toString();
  String? descricao;
  double? valor;

  Produto({this.descricao, this.valor});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': descricao,
      'valor': valor,
    };
  }

  factory Produto.fromMap(Map<String, dynamic> map) {
    return Produto(
      descricao: map['nome'] != null ? map['nome'] as String : null,
      valor: map['valor'] != null ? map['valor'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Produto.fromJson(String source) =>
      Produto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant Produto other) {
    if (identical(this, other)) return true;

    return other.descricao == descricao && other.valor == valor;
  }

  @override
  int get hashCode => descricao.hashCode ^ valor.hashCode;

  @override
  String toString() => 'Produto(nome: $descricao, valor: $valor)';
}
