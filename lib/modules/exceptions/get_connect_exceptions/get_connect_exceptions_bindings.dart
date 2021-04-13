import 'package:consumindo_api_com_flutter/modules/exceptions/get_connect_exceptions/repository/getconnect_local_backend_exceptions.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend_exceptions.dart';
import 'package:consumindo_api_com_flutter/shared/rest_client.dart';
import 'package:get/get.dart';
import './get_connect_exceptions_controller.dart';

class GetConnectExceptionsBindings implements Bindings {
	@override
	void dependencies() {
    Get.put(RestClient());
    Get.put<ILocalBackendExceptions>(GetconnectLocalBackendExceptions(restClient: Get.find()));
		Get.put(GetConnectExceptionsController(repository: Get.find()));
	}
}