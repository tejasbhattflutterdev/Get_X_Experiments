import 'package:exp_fist/bindings/controllers/first_controller.dart';
import 'package:exp_fist/bindings/controllers/second_controller.dart';
import 'package:exp_fist/bindings/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFirstScreenExample extends StatelessWidget {
  const MyFirstScreenExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use of Bindings'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                'First Value For Decrement = ${Get.find<FirstControllerExB>().number1} ',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => Text(
                'Second Value For Increment = ${Get.find<SecondontrollerExB>().number2} ',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<FirstControllerExB>().decement();
                },
                child: const Text('First Decrement')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<SecondontrollerExB>().increment();
                },
                child: const Text('Second Increment')),
            const SizedBox(
              height: 120,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const TempHomePage());
              },
              child: const Text(
                'Goto Home Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
