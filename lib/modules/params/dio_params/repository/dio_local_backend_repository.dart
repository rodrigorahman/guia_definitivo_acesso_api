import 'package:consumindo_api_com_flutter/model/backend_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:dio/dio.dart';

class DioLocalBackendRepository implements ILocalBackend {
  @override
  Future<BackendModel> helloPathParam() async {
    final response = await Dio().get(
      'http://192.168.15.100:8080/hello-path-param/Rodrigo Rahman',
    );

    return BackendModel.fromMap(response.data);
  }

  @override
  Future<BackendModel> helloQueryParam() async {
    final response = await Dio().get(
      'http://192.168.15.100:8080/hello-query-param/',
      queryParameters: {'name': 'Rodrigo Rahman Query param'},
    );

    return BackendModel.fromMap(response.data);
  }

  @override
  Future<BackendModel> helloTogetherParam() async {
    final response = await Dio().get(
      'http://192.168.15.100:8080/hello-together/Rodrigo Rahman Query param',
      queryParameters: {
        // no Dio vc pode mandar como um parametro numerico
        'idade': 36
      },
    );

    return BackendModel.fromMap(response.data);
  }
}
