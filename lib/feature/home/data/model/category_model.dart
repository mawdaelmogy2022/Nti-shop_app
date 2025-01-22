import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryName;
  // final Color backgroundColor;
  final IconData icon;
  CategoryModel({
    required this.categoryName,
    required this.icon
  });
}

List<CategoryModel> listCategory = [
  CategoryModel(
    categoryName: 'electronics',
    icon: Icons.laptop
  ),
  CategoryModel(
    categoryName: "women's clothing",
    icon: Icons.ac_unit_rounded
  ),
  CategoryModel(
    categoryName: "men's clothing",
    icon: Icons.style_rounded
  ),
  CategoryModel(
    categoryName: 'jewelery',
    icon: Icons.diamond
  ),
];
