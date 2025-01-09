import 'package:flutter/material.dart';


class CategoryModel {
  final String categoryName;
  final Color backgroundColor;
  CategoryModel(
      {required this.categoryName, required this.backgroundColor});
}

List<CategoryModel> listCategory = [
  CategoryModel(
      categoryName: 'electronics', backgroundColor:const Color(0xffB8B7A3) ),
  CategoryModel(categoryName: "women's clothing", backgroundColor:const Color(0xff806044) ),
  CategoryModel(
      categoryName: "men's clothing", backgroundColor: const Color(0xfff412f26) ),
  CategoryModel(
      categoryName: 'jewelery', backgroundColor:const Color(0xff6a6f4c) ),

];