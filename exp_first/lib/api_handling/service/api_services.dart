import 'package:exp_fist/api_handling/module/models/product_modal.dart';
import 'package:http/http.dart' as http;

class ApiSrvices {
  final String url =
      'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie';
  Future<List<Prouct>> dispAllData() async {
    final response = await http.get(Uri.parse(url));
    final jsonData = response.body;
    return prouctFromJson(jsonData);
  }
}
