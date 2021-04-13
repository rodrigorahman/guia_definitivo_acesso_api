import 'package:consumindo_api_com_flutter/shared/rest_client.dart';
import 'package:get/get.dart';
import './params_controller.dart';

class ParamsBindings implements Bindings {
	@override
	void dependencies() {
    Get.put(RestClient());
		Get.put(ParamsController());
	}
}