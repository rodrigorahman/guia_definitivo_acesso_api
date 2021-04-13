
import 'package:consumindo_api_com_flutter/repository/i_local_backend_exceptions.dart';
import 'package:consumindo_api_com_flutter/shared/http_client_exception_extensions.dart';
import 'package:http/http.dart' as http;

class HttpLocalBackendExceptions implements ILocalBackendExceptions {
  @override
  Future<void> error400() async {
    final result = await http.get(Uri.parse('http://192.168.15.100:8080/400'));
    result.checkIsError();

    if(result.statusCode == 200) {

    }
    // Exemplo de tratamento dentro do repository
    // else if(result.statusCode == 400){
    //   throw RestException(message: result.reasonPhrase ?? 'Erro 400', statusCode: result.statusCode);
    // }
    
  }

  @override
  Future<void> error403() async {
    final result = await http.get(Uri.parse('http://192.168.15.100:8080/403'));
    result.checkIsError();
    // if(result.statusCode == 403){
    //   throw RestException(message: result.reasonPhrase ?? 'Erro 403', statusCode: result.statusCode);
    // }
  }

  @override
  Future<void> error500() async {
    final result = await http.get(Uri.parse('http://192.168.15.100:8080/500'));
    result.checkIsError();
    // if(result.statusCode == 500){
    //   throw RestException(message: result.reasonPhrase ?? 'Erro 500', statusCode: result.statusCode);
    // }
  }
  
}