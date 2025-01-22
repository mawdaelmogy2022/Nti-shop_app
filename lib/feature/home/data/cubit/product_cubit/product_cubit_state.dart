
import 'package:shop_app/feature/home/data/model/product_model.dart';

class ProductCubitState {}

class Intialstatue extends ProductCubitState {}

class Failurestatue extends ProductCubitState {
  final String erroMessage;
  Failurestatue({required this.erroMessage});
}
class Successtatue extends ProductCubitState {
  final List<ProductModel> prducts;
  Successtatue({required this.prducts});
}

class Loadingstatue extends ProductCubitState {}
