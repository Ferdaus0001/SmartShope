import 'package:flutter/material.dart';

class DarawerScreen extends StatefulWidget {
  const DarawerScreen({super.key});

  @override
  State<DarawerScreen> createState() => _DarawerScreenState();
}

class _DarawerScreenState extends State<DarawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: [
           Container(height: 600,width: 600,color: Colors.blue,)
         ],

      )
    );
  }
}
