import 'package:exp_fist/navigation/use_0f_controller/ex_controller_first.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use Of Controller To Pass Data'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const DetailsScreen(),
                  arguments: {
                    'nameDetails': 'ABC',
                    'ageDetails': 30,
                  },
                );
              },
              child: const Text(
                'Send Data To Screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
