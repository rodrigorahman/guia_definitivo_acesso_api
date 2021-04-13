import 'package:consumindo_api_com_flutter/shared/rest_client.dart';
import 'package:get/get.dart';

class ApiAccessBindinds implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
  }
}
