import 'package:flutter/material.dart';

class BuyProdectsScreen extends StatefulWidget {
  const BuyProdectsScreen({super.key});

  @override
  State<BuyProdectsScreen> createState() => _BuyProdectsScreenState();
}

class _BuyProdectsScreenState extends State<BuyProdectsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(1.0),
         child: Column(

        children: [
          Text('HI'),
        ],


          ),
       ),
      ),
    );
  }
}
