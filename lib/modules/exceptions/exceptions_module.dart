import 'package:consumindo_api_com_flutter/modules/exceptions/exceptions_page.dart';
import 'package:consumindo_api_com_flutter/modules/exceptions/http_exceptions/http_exceptions_bindings.dart';
import 'package:consumindo_api_com_flutter/modules/exceptions/http_exceptions/http_exceptions_page.dart';
import 'package:get/get.dart';

import 'dio_exceptions/dio_exceptions_bindings.dart';
import 'dio_exceptions/dio_exceptions_page.dart';
import 'get_connect_exceptions/get_connect_exceptions_bindings.dart';
import 'get_connect_exceptions/get_connect_exceptions_page.dart';

class ExceptionsModule extends GetPage {
  ExceptionsModule()
      : super(
          name: '/exceptions',
          page: () => ExceptionsPage(),
          children: [
            GetPage(
              name: '/http',
              page: () => HttpExceptionsPage(),
              binding: HttpExceptionsBindings(),
            ),
            GetPage(
              name: '/dio',
              page: () => DioExceptionsPage(),
              binding: DioExceptionsBindings(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => GetConnectExceptionsPage(),
              binding: GetConnectExceptionsBindings(),
            )
          ],
        );
}
