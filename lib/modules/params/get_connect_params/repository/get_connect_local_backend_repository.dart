import 'package:consumindo_api_com_flutter/model/backend_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:consumindo_api_com_flutter/shared/rest_client.dart';

class GetConnectLocalBackendRepository implements ILocalBackend {
  final RestClient restClient;

  GetConnectLocalBackendRepository(this.restClient);

  @override
  Future<BackendModel> helloPathParam() async {
    final response = await restClient.get(
      'http://192.168.15.100:8080/hello-path-param/Rodrigo Rahman',
      decoder: (data) => BackendModel.fromMap(data),
    );

    return response.body!;
  }

  @override
  Future<BackendModel> helloQueryParam() async {
    final response = await restClient.get(
      'http://192.168.15.100:8080/hello-query-param/',
      query: {'name': 'Rodrigo Rahman Query param'},
      decoder: (data) => BackendModel.fromMap(data),
    );

    return response.body!;
  }

  @override
  Future<BackendModel> helloTogetherParam() async {
    final response = await restClient.get(
      'http://192.168.15.100:8080/hello-together/Rodrigo Rahman Query param',
      query: {
        // Não pode enviar nada diferente de String
        // 'idade': 36
        'idade': '36'
      },
      decoder: (data) => BackendModel.fromMap(data),
    );

    return response.body!;
  }
}
