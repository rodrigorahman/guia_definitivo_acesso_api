import 'package:consumindo_api_com_flutter/modules/params/http_params/repository/http_local_backend_repository.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:get/get.dart';
import './http_params_controller.dart';

class HttpParamsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ILocalBackend>(HttpLocalBackendRepository());
    Get.put(HttpParamsController(Get.find()));
  }
}
