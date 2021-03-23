import 'package:consumindo_api_com_flutter/model/backend_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:consumindo_api_com_flutter/shared/rest_client.dart';

class GetConnectLocalBackendRepository implements ILocalBackend {
  final RestClient restClient;

  GetConnectLocalBackendRepository(this.restClient);

  @override
  Future<BackendModel> helloPathParam() async {
    final nome = 'GetConnect Rodrigo Rahman Param';
    final response = await restClient.get(
      'http://192.168.15.100:8080/hello-path-param/$nome',
      decoder: (data) => BackendModel.fromMap(data),
    );
    return response.body ?? BackendModel(mensagem: '');
  }

  @override
  Future<BackendModel> helloQueryParam() async {
    final nome = 'GetConnect Rodrigo Rahman Query';
    final response = await restClient.get(
      'http://192.168.15.100:8080/hello-query-param/',
      query: {'name': nome},
      decoder: (data) => BackendModel.fromMap(data),
    );
    return response.body ?? BackendModel(mensagem: '');
  }

  @override
  Future<BackendModel> helloTogetherParam() async {
    final nome = 'GetConnect Rodrigo Rahman Together';
    final response = await restClient.get(
      'http://192.168.15.100:8080/hello-together/$nome',
      query: {'idade': '38'},
      decoder: (data) => BackendModel.fromMap(data),
    );
    return response.body ?? BackendModel(mensagem: '');
  }
}
