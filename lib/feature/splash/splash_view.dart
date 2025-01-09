import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shop_app/feature/home/presentation/view/screen/home_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()), // Replace with your main screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    //  backgroundColor:   Color(,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.asset('assets/images/logo.png',fit: BoxFit.fill,),),
            const  SpinKitThreeBounce(
               color: Colors.blue,
                size: 50.0,
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
