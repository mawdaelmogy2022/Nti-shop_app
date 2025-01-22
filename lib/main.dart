import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/feature/home/data/cubit/product_cubit/product_cubit.dart';
import 'package:shop_app/feature/splash/splash_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
     DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => ProductCubit(),
        child:  MaterialApp(
          home: SplashScreen(),
        ),
      ),
    );
  }
}
