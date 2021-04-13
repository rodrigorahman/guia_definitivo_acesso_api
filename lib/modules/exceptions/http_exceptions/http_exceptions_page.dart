import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './http_exceptions_controller.dart';

class HttpExceptionsPage extends GetView<HttpExceptionsController> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
      appBar: AppBar(
        title: Text('Http Exceptions Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => controller.error500(),
              child: Text('500'),
            ),
            TextButton(
              onPressed: () => controller.error403(),
              child: Text('403'),
            ),
            TextButton(
              onPressed: () => controller.error400(),
              child: Text('400'),
            ),
          ],
        ),
      ),
    );
   }
}