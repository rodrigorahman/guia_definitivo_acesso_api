
import 'package:consumindo_api_com_flutter/model/backend_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:http/http.dart' as http;

class HttpParamsLocalBackendRepository implements ILocalBackend {
  @override
  Future<BackendModel> helloPathParam() async {
    final nome = 'Http Rodrigo Rahman';
    final url = Uri.parse('http://192.168.15.100:8080/hello-path-param/$nome');
    final response = await http.get(url);
    return BackendModel.fromJson(response.body);
  }

  @override
  Future<BackendModel> helloQueryParam() async {
    final nome = 'Http Query Param Rodrigo Rahman';
    
    // var url = Uri.parse('http://192.168.15.100:8080/hello-path-param/?name=$name');
    var url = Uri.parse('http://192.168.15.100:8080/hello-query-param/');
    url = url.replace(queryParameters: {'name': nome});

    final response = await http.get(url);
    return BackendModel.fromJson(response.body);
  }

  @override
  Future<BackendModel> helloTogetherParam() async {
    final nome = 'Http Together Param Rodrigo Rahman';
    
    var url = Uri.parse('http://192.168.15.100:8080/hello-together/$nome');
    url = url.replace(queryParameters: {'idade': '36'});

    final response = await http.get(url);
    return BackendModel.fromJson(response.body);
  }
  
}