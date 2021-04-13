import 'package:consumindo_api_com_flutter/modules/exceptions/dio_exceptions/repository/dio_local_backend_exception.dart';
import 'package:consumindo_api_com_flutter/repository/i_local_backend_exceptions.dart';
import 'package:get/get.dart';
import './dio_exceptions_controller.dart';

class DioExceptionsBindings implements Bindings {
	@override
	void dependencies() {
    Get.put<ILocalBackendExceptions>(DioLocalBackendException());
		Get.put(DioExceptionsController(repository: Get.find()));
	}
}