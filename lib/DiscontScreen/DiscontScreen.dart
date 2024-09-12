import 'package:flutter/material.dart';

class DiscontScreen extends StatefulWidget {
  const DiscontScreen({super.key});

  @override
  State<DiscontScreen> createState() => _DiscontScreenState();
}

class _DiscontScreenState extends State<DiscontScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Discount Screen'),
      ),
    );
  }
}
