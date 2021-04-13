import 'package:consumindo_api_com_flutter/modules/exceptions/http_exceptions/repository/http_local_backend_exceptions.dart';
import 'package:consumindo_api_com_flutter/modules/params/http_params/repository/http_local_backend_repository.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend_exceptions.dart';
import 'package:get/get.dart';
import './http_exceptions_controller.dart';

class HttpExceptionsBindings implements Bindings {
	@override
	void dependencies() {
    Get.put<ILocalBackendExceptions>(HttpLocalBackendExceptions());
		Get.put(HttpExceptionsController(repository: Get.find()));
	}
}