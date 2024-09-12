import 'package:flutter/material.dart';

class ApplePhoneScreen extends StatefulWidget {
  const ApplePhoneScreen({super.key});

  @override
  State<ApplePhoneScreen> createState() => _ApplePhoneScreenState();
}

class _ApplePhoneScreenState extends State<ApplePhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Container(
           height: 250,
           width: 250,
           decoration: BoxDecoration(
             color: Colors.blueGrey,
             image: DecorationImage(
               image: AssetImage('assets/image/register.png'),
               fit: BoxFit.cover,
             )
           ),
         ),
      ),
    );

  }
}
