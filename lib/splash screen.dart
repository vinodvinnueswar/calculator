import 'dart:async';

import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),() {
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>Calculator()), (route) => false);
    } );
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
            child: Text("Calculator",style: TextStyle(fontSize:50,fontWeight: FontWeight.bold,color: Colors.black),),
      )

    );
  }
}
