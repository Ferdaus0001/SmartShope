import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smartshopes/HomeScreen/HomeScreen.dart';
import 'package:smartshopes/SplashScreen/SplashScreen.dart';

import 'LoginScreen/LoginScreen.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

     return GetMaterialApp(
       home:  SplashScreen(),
       debugShowCheckedModeBanner: false,

     );

  }

}