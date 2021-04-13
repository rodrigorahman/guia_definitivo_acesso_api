import 'package:consumindo_api_com_flutter/modules/exceptions/exceptions_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';
import 'modules/api_access/api_access_module.dart';
import 'modules/params/params_module.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        ApiAccessModule(),
        ParamsModule(),
        ExceptionsModule(),
      ],
    );
  }
}
