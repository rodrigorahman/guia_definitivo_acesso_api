import 'dart:convert';

class BackendModel {
  String mensagem;
  int? idade;
  
  BackendModel({
    required this.mensagem,
    this.idade,
  });
  
  

  Map<String, dynamic> toMap() {
    return {
      'mensagem': mensagem,
      'idade': idade,
    };
  }

  factory BackendModel.fromMap(Map<String, dynamic> map) {
    return BackendModel(
      mensagem: map['mensagem'] ?? '',
      idade: map['idade'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BackendModel.fromJson(String source) => BackendModel.fromMap(json.decode(source));
}
