import 'package:get/get.dart';

class ExampleTwoController extends GetxController {
  RxDouble opacity = .4.obs;

  setOpacity(double opa) {
    opacity.value = opa;
  }
}
