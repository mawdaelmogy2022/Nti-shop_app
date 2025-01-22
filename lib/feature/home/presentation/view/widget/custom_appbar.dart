import 'package:flutter/material.dart';

PreferredSizeWidget? customAppbar({required String titleCategory ,}) {
  return AppBar(
  
    centerTitle: true,
    title: Text(
      titleCategory,
      style:const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize:22),
    ),
  );
}
