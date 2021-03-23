import 'package:consumindo_api_com_flutter/model/backend_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:dio/dio.dart';

class DioLocalBackendRepository implements ILocalBackend {
  @override
  Future<BackendModel> helloPathParam() async {
    final name = 'Rodrigo Rahman DIO Param';
    final response = await Dio().get<Map<String,dynamic>>(
      'http://192.168.15.100:8080/hello-path-param/$name',
    );
    return BackendModel.fromMap(response.data ?? <String, dynamic>{});
  }

  @override
  Future<BackendModel> helloQueryParam() async {
    final name = 'Rodrigo Rahman DIO Query Param';
    final response = await Dio().get<Map<String,dynamic>>(
      'http://192.168.15.100:8080/hello-query-param/',
      queryParameters: {'name': name}
    );
    return BackendModel.fromMap(response.data ?? <String, dynamic>{});
  }

  @override
  Future<BackendModel> helloTogetherParam() async {
    final name = 'Rodrigo Rahman DIO Together Param';
    final response = await Dio().get<Map<String,dynamic>>(
      'http://192.168.15.100:8080/hello-together/$name',
      queryParameters: {'idade': 36}
    );
    return BackendModel.fromMap(response.data ?? <String, dynamic>{});
  }
}
