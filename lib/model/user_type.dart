import 'dart:convert';


class UserType {
  
  String id;
  String name;

  UserType({
    this.id,
    this.name,
  });


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory UserType.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return UserType(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserType.fromJson(String source) => UserType.fromMap(json.decode(source));
}
