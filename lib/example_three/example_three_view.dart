import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'example_three_controller.dart';

class ExampleThreeView extends StatefulWidget {
  const ExampleThreeView({super.key});

  @override
  State<ExampleThreeView> createState() => _ExampleThreeViewState();
}

class _ExampleThreeViewState extends State<ExampleThreeView> {
  final ExampleThreeController examplethreecontroller =
      Get.put(ExampleThreeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Three View'),
      ),
      body: Column(
        children: [
          const Text('switch example using getx'),
          Obx(() {
            return Switch(
                value: examplethreecontroller.switchvalue.value,
                onChanged: (value) {
                  examplethreecontroller.changeSwitch(value);
                });
          }),
        ],
      ),
    );
  }
}
