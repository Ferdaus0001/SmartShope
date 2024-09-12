import 'package:flutter/material.dart';

class SamsungScreen extends StatefulWidget {
  const SamsungScreen({super.key});

  @override
  State<SamsungScreen> createState() => _SamsungScreenState();
}

class _SamsungScreenState extends State<SamsungScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:      Container(
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


    ) ;
  }
}
