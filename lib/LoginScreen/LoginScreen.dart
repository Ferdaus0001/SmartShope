import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/register.png'),
            fit: BoxFit.cover,
          )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: Column(

              children: [
                SizedBox(height: 200,),
                TextFormField(

                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      borderSide: BorderSide(color: Colors.blue,width: 2,)
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
