import 'package:flutter/material.dart';

PreferredSizeWidget? customAppbar({required String titleCategory ,required Color color}) {
  return AppBar(
    backgroundColor: color,
    centerTitle: true,
    title: Text(
      titleCategory,
      style:const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize:22),
    ),
  );
}
