import 'package:get/get.dart';

class CounterController extends GetxController {
  //obs means observable matlab iski value change hugi
  //Rxint jo ha wo Getxcontrolller k data types ha
  RxInt x = 0.obs;

  incrementCounter() {
    x.value++;
  }
}
