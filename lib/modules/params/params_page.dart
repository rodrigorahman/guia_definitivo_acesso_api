import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './params_controller.dart';

class ParamsPage extends GetView<ParamsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guia acesso API Params'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/params/http'),
              child: Text(
                'HTTP',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/params/get_connect'),
              child: Text(
                'GetConnect',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/params/dio_params'),
              child: Text(
                'DIO',
                style: TextStyle(fontSize: 20),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
