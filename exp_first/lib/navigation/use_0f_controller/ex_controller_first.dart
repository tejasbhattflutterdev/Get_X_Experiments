import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  late String nameDetails;
  late int ageDetails;

  @override
  void onInit() {
    super.onInit();
    final Map<String, dynamic> args = Get.arguments;
    nameDetails = args['nameDetails'];
    ageDetails = args['ageDetails'];
  }
}

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final DetailController controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use Of Controller'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Name: ${controller.nameDetails}'),
            Text('Age: ${controller.ageDetails}'),
          ],
        ),
      ),
    );
  }
}
