import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/cubit/product_cubit/product_cubit.dart';
import 'package:shop_app/feature/category/presentation/view/screen/category_view.dart';
import 'package:shop_app/feature/home/model/category_model.dart';
import 'package:shop_app/feature/home/presentation/view/widget/custom_container_category.dart';
import 'package:shop_app/feature/home/presentation/view/widget/custom_text_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Shop App ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 40),
          child: ListView.builder(
                      itemCount: listCategory.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: CustomTextDrawer(
                              categoryModel: listCategory[index],
                              ontap: () {
                                final myBloc =
                                    BlocProvider.of<ProductCubit>(context);
                                myBloc.getdatacubit(
                                    category: listCategory[index].categoryName);
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return CategoryView(
                                    category: listCategory[index].categoryName,
                                    color: listCategory[index].backgroundColor,
                                  );
                                }));
                              }),
                        );
                      }),
        )

  
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
           
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                    itemCount: listCategory.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: CustomContainerCategory(
                            categoryModel: listCategory[index],
                            ontap: () {
                              final myBloc =
                                  BlocProvider.of<ProductCubit>(context);
                              myBloc.getdatacubit(
                                  category: listCategory[index].categoryName);
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return CategoryView(
                                  category: listCategory[index].categoryName,
                                  color: listCategory[index].backgroundColor,
                                );
                              }));
                            }),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
