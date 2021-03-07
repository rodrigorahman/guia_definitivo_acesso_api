import 'dart:convert';


class UserType {
  
  String id;
  String name;

  UserType({
    required this.id,
    required this.name,
  });


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory UserType.fromMap(Map<String, dynamic> map) {
    return UserType(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserType.fromJson(String source) => UserType.fromMap(json.decode(source));
}
