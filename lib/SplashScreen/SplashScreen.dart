import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:lottie/lottie.dart';
import 'package:smartshopes/HomeScreen/HomeScreen.dart';

import '../LoginScreen/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 5), () {
     Get.to(LoginScreen());
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Row(
    
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [
    
    
        SingleChildScrollView(
          child: Column(
              
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              SizedBox(height: 60,),
              Text("    Welcom Sir \n Places Wait.....",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              Lottie.asset('assets/image/dalevareman.json',height: 350,width: 350),
              SizedBox(height: 90,),
              Text('  Welcom To Smart Shope \n'
                  '\n সব কিছু এখানে পাবে সব থেকে কম দামে'
                  ' \n 50% ডিসকাউনটে \n Best Deal of All Time  ',style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        )
            ],
        ),
      ),
    );
  }
}
