import 'package:consumindo_api_com_flutter/repository/i_local_backend_exceptions.dart';
import 'package:consumindo_api_com_flutter/shared/rest_client.dart';
import 'package:consumindo_api_com_flutter/shared/rest_exception.dart';

class GetconnectLocalBackendExceptions implements ILocalBackendExceptions {
  final RestClient restClient;

  GetconnectLocalBackendExceptions({
    required this.restClient,
  });

  @override
  Future<void> error400() async {
    final result = await restClient.get('http://192.168.15.100:8080/400');

    if (result.hasError) {
      throw RestException(
        message: result.statusText ?? 'Erro',
        statusCode: result.statusCode ?? 0,
      );
    }
  }

  @override
  Future<void> error403() async {
    final result = await restClient.get('http://192.168.15.100:8080/403');

    if (result.hasError) {
      if(result.statusCode == 403) {
        throw RestException(
          message: 'Acesso Negado',
          statusCode: result.statusCode ?? 0,
        );  
      }
      throw RestException(
        message: result.statusText ?? 'Erro',
        statusCode: result.statusCode ?? 0,
      );
    }
  }

  @override
  Future<void> error500() async {
    final result = await restClient.get('http://192.168.15.100:8080/500');

    if (result.hasError) {
      throw RestException(
        message: result.statusText ?? 'Erro',
        statusCode: result.statusCode ?? 0,
      );
    }
  }
}
