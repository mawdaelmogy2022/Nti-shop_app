
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/feature/home/data/cubit/product_cubit/product_cubit_state.dart';
import 'package:shop_app/feature/home/data/service/product_service.dart';

class ProductCubit extends Cubit<ProductCubitState> {
  ProductCubit() : super(Intialstatue());
  ProductService productService = ProductService();
  getdatacubit({required String category})async {
    emit(Intialstatue());
    var products = await productService.getproductData(category:category );
    emit(Successtatue(prducts: products));
  }
}