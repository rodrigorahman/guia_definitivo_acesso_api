import 'package:consumindo_api_com_flutter/modules/params/params_bindings.dart';
import 'package:consumindo_api_com_flutter/modules/params/params_page.dart';
import 'package:get/route_manager.dart';

import 'dio_params/dio_params_bindings.dart';
import 'dio_params/dio_params_page.dart';
import 'get_connect_params/get_connect_params_bindings.dart';
import 'get_connect_params/get_connect_params_page.dart';
import 'http_params/http_params_bindings.dart';
import 'http_params/http_params_page.dart';

class ParamsModule extends GetPage {
  ParamsModule()
      : super(
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
          ],
        );
}
