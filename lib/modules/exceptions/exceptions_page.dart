import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './exceptions_controller.dart';

class ExceptionsPage extends GetView<ExceptionsController> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
      appBar: AppBar(
        title: Text('Guia acesso API Exceptions'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/exceptions/http'),
              child: Text(
                'HTTP',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/exceptions/dio'),
              child: Text(
                'DIO',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/exceptions/getconnect'),
              child: Text(
                'GetConnect',
                style: TextStyle(fontSize: 20),
              ),
            ),
            
            
          ],
        ),
      ),
    );
   }
}