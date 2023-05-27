import 'dart:convert';

class Endereco {
  final String? id;
  final String? rua;
  final String? bairro;
  final String? numero;

  Endereco({
    this.rua,
    this.bairro,
    this.id,
    this.numero,
  });

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rua': rua,
      'bairro': bairro,
      'identificador': id,
      'numero': numero,
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] != null ? map['rua'] as String : null,
      bairro: map['bairro'] != null ? map['bairro'] as String : null,
      id: map['identificador'] != null ? map['identificador'] as String : null,
      numero: map['numero'] != null ? map['numero'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Endereco.fromJson(String source) => Endereco.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant Endereco other) {
    if (identical(this, other)) return true;
  
    return 
      other.rua == rua &&
      other.bairro == bairro &&
      other.id == id &&
      other.numero == numero;
  }

  @override
  int get hashCode {
    return rua.hashCode ^
      bairro.hashCode ^
      id.hashCode ^
      numero.hashCode;
  }

  @override
  String toString() {
    return 'Endereco(rua: $rua, bairro: $bairro, identificador: $id, numero: $numero)';
  }
}
