import 'package:consumindo_api_com_flutter/model/user_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_user_repository.dart';
import 'package:consumindo_api_com_flutter/shared/rest_client.dart';

class UserRepositoryGetConnect implements IUserRepository {
  final RestClient restClient;

  UserRepositoryGetConnect(this.restClient);

  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await restClient.get(
      'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users',
      decoder: (body){
        if(body is List){
          return body.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();
        }
        return <UserModel>[];
      }
    );

    if(response.hasError){
      throw Exception('Erro ao buscar usuários');
    }
    
    return response.body ?? <UserModel>[];
  }
}
