import 'package:get/get.dart';

class FirstController extends GetxController {
  RxInt count = 0.obs;
  RxList<String> myRxList = <String>[].obs;
  increment() {
    count.value++;
    update();
  }

  decrement() {
    count.value--;
    update();
  }

  setToZero() {
    count.value = 0;
    update();
  }

  putValuesInList() {
    myRxList.addAll(['First', 'Second', 'Third']);
  }
}
