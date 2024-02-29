import 'package:exp_fist/workers/ex_workers_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExWorkersFirstScreen extends StatelessWidget {
  final ExWorkersController controller = Get.put(ExWorkersController());
  ExWorkersFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example of Workers'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text('${controller.counter.value}');
              },
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       controller.counter.value++;
            //     },
            //     child: Text("increment"))
          ],
        ),
      ),
    );
  }
}
