import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SMS extends StatefulWidget {
  const SMS({super.key});

  @override
  State<SMS> createState() => _SMSState();
}

class _SMSState extends State<SMS> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50,),
            CircleAvatar(),
            Text('SMS ')
          ],
        ),
      ),
    );
  }
}
