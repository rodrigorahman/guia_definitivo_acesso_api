

import 'package:consumindo_api_com_flutter/model/backend_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:http/http.dart' as http;

class HttpLocalBackendRepository implements ILocalBackend {
  @override
  Future<BackendModel> helloPathParam() async {
    
    final response = await http.get(Uri.parse('http://192.168.15.100:8080/hello-path-param/Rodrigo Rahman'));
    return BackendModel.fromJson(response.body);
  }

  @override
  Future<BackendModel> helloQueryParam() async {
    final response = await http.get(Uri.parse('http://192.168.15.100:8080/hello-query-param/?name=Rodrigo Rahman Query param'));
    return BackendModel.fromJson(response.body);
  }

  @override
  Future<BackendModel> helloTogetherParam() async {
    final response = await http.get(Uri.parse('http://192.168.15.100:8080/hello-together/Rodrigo Rahman Together?idade=36'));
    return BackendModel.fromJson(response.body);
  }
  
}