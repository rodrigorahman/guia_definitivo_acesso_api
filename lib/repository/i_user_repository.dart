import 'package:consumindo_api_com_flutter/model/user_model.dart';

abstract class IUserRepository {
  
  Future<List<UserModel>> findAllUsers();
  
}