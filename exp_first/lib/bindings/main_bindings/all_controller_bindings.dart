import 'package:exp_fist/bindings/controllers/first_controller.dart';
import 'package:exp_fist/bindings/controllers/second_controller.dart';
import 'package:get/get.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstControllerExB>(() => FirstControllerExB());
    Get.lazyPut<SecondontrollerExB>(() => SecondontrollerExB());
  }
}
