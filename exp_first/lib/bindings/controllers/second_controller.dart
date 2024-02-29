import 'package:get/get.dart';

class SecondontrollerExB extends GetxController {
  RxInt number2 = 0.obs;

  increment() {
    number2.value++;
    update();
  }
}
