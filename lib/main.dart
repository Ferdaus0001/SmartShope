import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smartshopes/HomeScreen/HomeScreen.dart';
import 'package:smartshopes/SplashScreen/SplashScreen.dart';

import 'LoginScreen/LoginScreen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );

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