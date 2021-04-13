import 'dart:io';

import 'package:consumindo_api_com_flutter/repository/i_local_backend_exceptions.dart';
import 'package:consumindo_api_com_flutter/shared/rest_exception.dart';
import 'package:dio/dio.dart';

class DioLocalBackendException implements ILocalBackendExceptions {
  @override
  Future<void> error400() async {
    try {
      await Dio().get('http://192.168.15.100:8080/400');
    } on DioError catch (e) {
      throw RestException(
          message: e.error, statusCode: e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<void> error403() async {
    try {
      await Dio().get('http://192.168.15.100:8080/403');
    } on DioError catch (e) {
      if(e.response?.statusCode == 403) {
        print('Erro de acesso negado');
        throw RestException(
          message: 'Acesso Negado', statusCode: e.response?.statusCode ?? 0);
      }
      throw RestException(
          message: e.error, statusCode: e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<void> error500() async {
    try {
      await Dio().get('http://192.168.15.100:8080/500');
    } on DioError catch (e) {
      throw RestException(
          message: e.error, statusCode: e.response?.statusCode ?? 0);
    }
  }
}
