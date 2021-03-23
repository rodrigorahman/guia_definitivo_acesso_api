import 'package:consumindo_api_com_flutter/params/get_connect_params/repository/get_connect_local_backend_repository.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend.dart';
import 'package:consumindo_api_com_flutter/shared/rest_client.dart';
import 'package:get/get.dart';
import './get_connect_params_controller.dart';

class GetConnectParamsBindings implements Bindings {
	@override
	void dependencies() {
    Get.put(RestClient());
    Get.put<ILocalBackend>(GetConnectLocalBackendRepository(Get.find()));
		Get.put(GetConnectParamsController(Get.find()));
	}
}