import 'package:exp_fist/simple_state_manager/ex_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleStateManageEXP extends StatelessWidget {
  SimpleStateManageEXP({
    super.key,
  });
  final FirstController? firstController = Get.put(FirstController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple State Managment'),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<FirstController>(
              // init: FirstController(),
              init: firstController,
              builder: (cnt) {
                return Text(cnt.count.toString());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                //Get.find<FirstController>().increment();
                firstController?.increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 25,
            ),
            FloatingActionButton(
              onPressed: () {
                //Get.find<FirstController>().setToZero();
                firstController?.setToZero();
              },
              child: const Icon(Icons.dehaze_rounded),
            ),
            const SizedBox(
              width: 25,
            ),
            FloatingActionButton(
              onPressed: () {
                Get.find<FirstController>().decrement();
              },
              child: const Icon(Icons.minimize_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
