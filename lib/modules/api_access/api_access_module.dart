import 'package:get/route_manager.dart';

import 'dio/dio_bindings.dart';
import 'dio/dio_page.dart';
import 'get_connect/get_connect_bindings.dart';
import 'get_connect/get_connect_page.dart';
import 'api_access_bindinds.dart';
import 'api_access_page.dart';
import 'http/http_bindings.dart';
import 'http/http_page.dart';

class ApiAccessModule extends GetPage {
  ApiAccessModule()
      : super(
          name: '/api_access',
          page: () => ApiAccessPage(),
          binding: ApiAccessBindinds(),
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
          ],
        );
}
