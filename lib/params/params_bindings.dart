import 'package:get/get.dart';
import './params_controller.dart';

class ParamsBindings implements Bindings {
	@override
	void dependencies() {
		Get.put(ParamsController());
	}
}