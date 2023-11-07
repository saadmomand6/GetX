import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/example_two/example_two_controller.dart';

class ExampleTwoView extends StatefulWidget {
  const ExampleTwoView({super.key});

  @override
  State<ExampleTwoView> createState() => _ExampleTwoViewState();
}

class _ExampleTwoViewState extends State<ExampleTwoView> {
  final ExampleTwoController exampletwocontroller = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Two View'),
      ),
      body: Column(
        children: [
          Obx((){
            return Container(
              height: 50,
              width: 50,
              color: Colors.red.withOpacity(exampletwocontroller.opacity.value),
            );
          }
          ),
          Obx((){
            return  Slider(
                value: exampletwocontroller.opacity.value,
                onChanged: (value) {
                  exampletwocontroller.setOpacity(value);
                });
          }
          )
        ],
      ),
    );
  }
}
