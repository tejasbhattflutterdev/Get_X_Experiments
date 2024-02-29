import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyFirstService extends GetxService {
  RxInt counter = 0.obs;

  Future<void> incrementCounter() async {
    SharedPreferences sprefs = await SharedPreferences.getInstance();
    counter.value = (sprefs.getInt('counter') ?? 0) + 1;
    await sprefs.setInt('counter', counter.value);
  }
}
