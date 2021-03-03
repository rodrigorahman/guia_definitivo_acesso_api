import 'package:consumindo_api_com_flutter/home/home_bindinds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/dio/dio_bindings.dart';
import 'home/dio/dio_page.dart';
import 'home/get_connect/get_connect_bindings.dart';
import 'home/get_connect/get_connect_page.dart';
import 'home/home_page.dart';
import 'home/http/http_bindings.dart';
import 'home/http/http_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBindinds(),
          children: [
            GetPage(
              name: '/http',
              page: () => HttpPage(),
              binding: HttpBindings(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => GetConnectPage(),
              binding: GetConnectBindings(),
            ),
             GetPage(
              name: '/dio',
              page: () => DioPage(),
              binding: DioBindings(),
            )
          ],
        )
      ],
    );
  }
}
