import 'package:flutter/material.dart';
import 'package:shop_app/feature/home/model/category_model.dart';

class CustomContainerCategory extends StatelessWidget {
  const CustomContainerCategory(
      {super.key, required this.categoryModel, required this.ontap});
  final CategoryModel categoryModel;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: categoryModel.backgroundColor),
        width: double.infinity,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
