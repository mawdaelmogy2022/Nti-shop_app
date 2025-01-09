import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_app/core/model/product_model.dart';

class ProductService {
  Future<List<ProductModel>> getproductData({required String category}) async {
    var response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/${category}'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      List<ProductModel> productList =
          jsonData.map((item) => ProductModel.fromJson(item)).toList();
      return productList;
    } else {
      throw Exception('there are an error with statue code ${response.statusCode}');
    }
  }
}