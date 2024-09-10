import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Shope ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
        elevation: 1,
        centerTitle: true,
      ),
    );
  }
}
