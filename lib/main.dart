import 'package:consumindo_api_com_flutter/home/home_bindinds.dart';
import 'package:consumindo_api_com_flutter/params/dio_params/dio_params_bindings.dart';
import 'package:consumindo_api_com_flutter/params/dio_params/dio_params_page.dart';
import 'package:consumindo_api_com_flutter/params/get_connect_params/get_connect_params_bindings.dart';
import 'package:consumindo_api_com_flutter/params/get_connect_params/get_connect_params_page.dart';
import 'package:consumindo_api_com_flutter/params/http_params/http_params_bindings.dart';
import 'package:consumindo_api_com_flutter/params/http_params/http_params_page.dart';
import 'package:consumindo_api_com_flutter/params/params_bindings.dart';
import 'package:consumindo_api_com_flutter/params/params_page.dart';
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
            ),
            GetPage(
                name: '/params',
                page: () => ParamsPage(),
                binding: ParamsBindings(),
                children: [
                  GetPage(
                    name: '/http',
                    page: () => HttpParamsPage(),
                    binding: HttpParamsBindings(),
                  ),
                  GetPage(
                    name: '/get_connect',
                    page: () => GetConnectParamsPage(),
                    binding: GetConnectParamsBindings(),
                  ),
                  GetPage(
                    name: '/dio_params',
                    page: () => DioParamsPage(),
                    binding: DioParamsBindings(),
                  ),
                ])
          ],
        )
      ],
    );
  }
}
