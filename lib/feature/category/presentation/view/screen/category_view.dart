import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shop_app/core/cubit/product_cubit/product_cubit.dart';
import 'package:shop_app/core/cubit/product_cubit/product_cubit_state.dart';
import 'package:shop_app/feature/category/presentation/view/widget/custom_appbar.dart';
import 'package:shop_app/feature/category/presentation/view/widget/custom_card.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key,required this.category,required this.color});
  final String category;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductCubitState>(
      builder: (context, state) {
        if (state is Successtatue) {
          return Scaffold(
            appBar: customAppbar(titleCategory: category,color:color ),
            body: ListView.builder(
              itemCount: state.prducts.length,
              itemBuilder: (context, index) {
                return CustomCard(productModel: state.prducts[index],color: color,);
              },
            ),
          );
        } else if (state is Failurestatue) {
          return const Text('لا يوجد بيانات');
        } else {
          return  Center(child:
           Container(
            color: Colors.white,
             child:const Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SpinKitFadingCube(
                   color: Colors.blue,
                    size: 80.0,
                  ),
                  SizedBox(height: 20,),
                 Text('Loading.......',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight:FontWeight.bold ),),
               ],
             ),
           ),
          
         //  CircularProgressIndicator()
           );
        }
      },
    );
  }
}
