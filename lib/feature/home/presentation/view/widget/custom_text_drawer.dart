import 'package:flutter/material.dart';
import 'package:shop_app/feature/home/data/model/category_model.dart';

class CustomTextDrawer extends StatelessWidget {
  const CustomTextDrawer(
      {super.key, required this.categoryModel, required this.ontap});
  final CategoryModel categoryModel;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Text(
        categoryModel.categoryName,
        style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22),
      ),
    );
  }
}
