import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'image_picker_controller.dart';

class ImagePickerView extends StatefulWidget {
  const ImagePickerView({super.key});

  @override
  State<ImagePickerView> createState() => _ImagePickerViewState();
}

class _ImagePickerViewState extends State<ImagePickerView> {
  final ImagePickerController imagepickercontroller =
      Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX image Picker View'),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                  radius: 40,
                  backgroundImage: imagepickercontroller.path.isNotEmpty
                      ? FileImage(File(imagepickercontroller.path.toString()))
                      : null),
            ),
            TextButton(
              onPressed: () {
                imagepickercontroller.pickImage();
              },
              child: const Text('Pick Image'),
            )
          ],
        );
      }),
    );
  }
}
