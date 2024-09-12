import 'package:flutter/material.dart';

class TVProdictsScreen extends StatefulWidget {
  const TVProdictsScreen({super.key});

  @override
  State<TVProdictsScreen> createState() => _TVProdictsScreenState();
}

class _TVProdictsScreenState extends State<TVProdictsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('TVProdictsScreen'),
      ),
    );
  }
}
