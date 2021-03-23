import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:get/get.dart';

class HttpParamsController extends GetxController {
  final ILocalBackend _backend;
  final mensagem = ''.obs;
  final idade = 0.obs;

  HttpParamsController(this._backend);

  Future<void> callPath() async {
    final response = await _backend.helloPathParam();
    mensagem(response.mensagem);
    idade(response.idade ?? 0);
  }

  Future<void> callQuery() async {
    final response = await _backend.helloQueryParam();
    mensagem(response.mensagem);
    idade(response.idade ?? 0);
  }

  Future<void> callTogether() async {
    final response = await _backend.helloTogetherParam();
    mensagem(response.mensagem);
    idade(response.idade ?? 0);
  }
}
