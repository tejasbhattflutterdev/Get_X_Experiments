import 'package:get/get.dart';

class ExWorkersController extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter++;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    incrementCounterWorker();
  }

  void incrementCounterWorker() async {
    ever(counter, (_) {
      // print(object)
      Future.delayed(const Duration(seconds: 1), () {
        counter++;
      });
    });

    counter++;
  }
}
