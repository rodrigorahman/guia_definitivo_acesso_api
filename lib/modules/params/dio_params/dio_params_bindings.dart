import 'package:consumindo_api_com_flutter/modules/params/dio_params/repository/dio_local_backend_repository.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:get/get.dart';
import './dio_params_controller.dart';

class DioParamsBindings implements Bindings {
	@override
	void dependencies() {
    Get.put<ILocalBackend>(DioLocalBackendRepository());
		Get.put(DioParamsController(Get.find()));
	}
}