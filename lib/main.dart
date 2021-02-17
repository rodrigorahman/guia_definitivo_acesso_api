import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        GetPage(name: '/', page: () => HomePage(), children: [
          GetPage(
            name: '/http',
            page: () => HttpPage(),
            binding: HttpBindings(),
          )
        ])
      ],
    );
  }
}
