import 'package:flutter/material.dart';

class NikeProdictsScreen extends StatefulWidget {
  const NikeProdictsScreen({super.key});

  @override
  State<NikeProdictsScreen> createState() => _NikeProdictsScreenState();
}

class _NikeProdictsScreenState extends State<NikeProdictsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Nike Prodicts Screen'),
      ),
    );
  }
}
