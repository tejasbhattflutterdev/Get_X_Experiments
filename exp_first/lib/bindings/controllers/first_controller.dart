import 'package:get/get.dart';

class FirstControllerExB extends GetxController {
  RxInt number1 = 0.obs;

  decement() {
    number1.value--;
    update();
  }
}
