import 'package:flutter/material.dart';

class AirProdictsScreen extends StatefulWidget {
  const AirProdictsScreen({super.key});

  @override
  State<AirProdictsScreen> createState() => _AirProdictsScreenState();
}

class _AirProdictsScreenState extends State<AirProdictsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Air prodicts Screen'),
      ),
    );
  }
}
