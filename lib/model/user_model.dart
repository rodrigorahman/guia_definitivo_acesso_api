
import 'dart:convert';

import 'package:consumindo_api_com_flutter/model/user_type.dart';

class UserModel {

  String id;
  String name;
  String username;
  List<UserType>? types;
  
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'user_types': types?.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      types: List<UserType>.from(map['user_types']?.map((x) => UserType.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
