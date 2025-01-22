import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/feature/home/data/model/category_model.dart';

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
                color:const Color.fromARGB(255, 175, 27, 175)),
        width: double.infinity,
        height: 70,
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 8),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  categoryModel.categoryName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18), 
                         
                ),
                    Icon(categoryModel.icon,color: Colors.white,size: 24,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
