import 'package:get/get.dart';
import './exceptions_controller.dart';

class ExceptionsBindings implements Bindings {
	@override
	void dependencies() {
		Get.put(ExceptionsController());
	}
}