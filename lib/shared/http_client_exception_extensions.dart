import 'package:consumindo_api_com_flutter/shared/rest_exception.dart';
import 'package:http/http.dart';

extension HttpClientExceptionExtension on Response {
  void checkIsError() {
    if (this.statusCode > 399) {
      throw RestException(
        message: this.reasonPhrase ?? 'Erro',
        statusCode: statusCode,
        response: this,
      );
    }
  }
}
