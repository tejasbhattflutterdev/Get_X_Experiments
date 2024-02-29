import 'dart:developer';

import 'package:exp_fist/api_handling/module/models/product_modal.dart';
import 'package:exp_fist/api_handling/service/api_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  ApiSrvices apiSrvices = ApiSrvices();
  final isLoading = true.obs;
  final List<Prouct> productList = <Prouct>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      final products = await apiSrvices.dispAllData();
      if (products.isNotEmpty) {
        productList.assignAll(products);
      }
    } catch (e) {
      log('Error = ${e.toString()}');
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }
}
