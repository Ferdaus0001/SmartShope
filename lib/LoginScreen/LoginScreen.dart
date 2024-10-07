import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartshopes/SingupScrren/SingupSceen.dart';

import '../All_Prodict_Screen_Home/All_Prodicts_Screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _FormKay = GlobalKey<FormState>();

  TextEditingController EmailContoloer = TextEditingController();
  TextEditingController PasswordContoloer = TextEditingController();
  var _email ;
  var _passswor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/image/login.png'),
              fit: BoxFit.cover,
            )),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 11),
              child: Text(
                'Hello \n Login In! ',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 21,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        key: _FormKay,
                        controller: EmailContoloer,
                        onChanged: (value){
                          _email = value;

                        },

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email_outlined),
                            hintText: ' abc@email.com',
                            hintStyle: TextStyle(color: Colors.blue),
                            label: Text(
                              'Email',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock_outline),
                            hintText: ' Atlas 6 Degets Number ',
                            hintStyle: TextStyle(color: Colors.blue),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text(' Forget Password  ')),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      ElevatedButton(
                        onPressed: () { Get.to(All_prodicts_Screen());},
                        child: Text('  Login IN  ' ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        style:
                            ElevatedButton.styleFrom(minimumSize: Size(400, 60),
                              shadowColor: Colors.blue,
                              backgroundColor: Colors.blue
                            ),
                      ),
                      SizedBox(height: 41,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    const Text(' Dont Have a  account ?  '),
                    ElevatedButton(onPressed: (){
                      Get.to(SingupScreen());
                    }, child: Text('Sing UP ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue.shade300),))
                  ],)
                  
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
