import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './dio_params_controller.dart';

class DioParamsPage extends GetView<DioParamsController> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: Text('DioParamsPage'),),
			body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Message: ${controller.mensagem.value}'),
            ),
          ),
          Obx(
            () => Text('Idade: ${controller.idade.value}'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => controller.callPath(),
                child: Text('Path'),
              ),
              TextButton(
                onPressed: () => controller.callQuery(),
                child: Text('Query'),
              ),
              TextButton(
                onPressed: () => controller.callTogether(),
                child: Text('Together'),
              )
            ],
          )
        ],
      ),
		);
   }
}