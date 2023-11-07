import 'package:get/get.dart';

class ExampleThreeController extends GetxController {
  RxBool switchvalue = false.obs;

  changeSwitch(bool value) {
    switchvalue.value = value;
  }
}
