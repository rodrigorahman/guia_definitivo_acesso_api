import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:get/get.dart';

class GetConnectParamsController extends GetxController {
  
  final ILocalBackend _backend;
  RxString _message = ''.obs;
  final _idade = 0.obs;

  GetConnectParamsController(this._backend);

  String get message => _message.value;
  int get idade => _idade.value;

  Future<void> callPath() async {
    final result = await _backend.helloPathParam();
    _message(result.mensagem);
    _idade(result.idade ?? 0);
  }

  Future<void> callQuery() async {
    final result = await _backend.helloQueryParam();
    _message(result.mensagem);
    _idade(result.idade ?? 0);
  }

  Future<void> callTogether() async {
    final result = await _backend.helloTogetherParam();
    _message(result.mensagem);
    _idade(result.idade ?? 0);
  }
}