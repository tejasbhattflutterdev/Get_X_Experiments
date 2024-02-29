import 'package:exp_fist/api_handling/module/controllers/prouct_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListData extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());
  ProductListData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prduct Data List'),
      ),
      body: Obx(() {
        if (controller.isLoading.isTrue) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
              itemCount: controller.productList.length,
              itemBuilder: (c, i) {
                return Column(
                  children: [
                    Text(
                      controller.productList[i].id.toString(),
                    ),
                    Text(controller.productList[i].name.toString()),
                    Image.network(
                        controller.productList[i].apiFeaturedImage.toString())
                  ],
                );
              });
        }
      }),
    );
  }
}
