
import 'dart:convert';

import 'package:consumindo_api_com_flutter/model/user_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  
  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await http.get(Uri.parse('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users'));
      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
  
}