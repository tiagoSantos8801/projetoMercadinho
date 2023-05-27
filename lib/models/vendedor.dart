import 'dart:convert';

class Vendedor {
  final String? nome;
  final String? senha;
  final String? identificador;
  
  Vendedor({
    this.nome,
    this.senha,
    this.identificador,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'senha': senha,
      'identificador': identificador,
    };
  }

  factory Vendedor.fromMap(Map<String, dynamic> map) {
    return Vendedor(
      nome: map['nome'] != null ? map['nome'] as String : null,
      senha: map['senha'] != null ? map['senha'] as String : null,
      identificador: map['identificador'] != null ? map['identificador'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Vendedor.fromJson(String source) => Vendedor.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant Vendedor other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.senha == senha &&
      other.identificador == identificador;
  }

  @override
  int get hashCode => nome.hashCode ^ senha.hashCode ^ identificador.hashCode;

  @override
  String toString() => 'Vendedor(nome: $nome, senha: $senha, identificador: $identificador)';
}
