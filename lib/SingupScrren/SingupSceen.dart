import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../All_Prodict_Screen_Home/All_Prodicts_Screen.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  String _selectedOption = 'Male';  // Default selected option

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
              padding: const EdgeInsets.only(top: 50.0, left: 11),
              child: Text(
                'Hello \n Sing In! ',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
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
                    children: [
                      SizedBox(height: 17,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.perm_identity),
                            hintText: '  Full Name ',
                            hintStyle: TextStyle(color: Colors.blue),
                            label: Text(
                              'Name ',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                      SizedBox(height: 17,),
                      TextFormField(
                        keyboardType: TextInputType.text,
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
                      SizedBox(height: 17,),
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
                      SizedBox(height: 17,),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock_outline),
                            hintText: '  Conform Password ',
                            hintStyle: TextStyle(color: Colors.blue),
                            label: Text(
                              ' Comform Password',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),

                      // রেডিও বাটন যুক্ত করা হল
                      SizedBox(height: 17,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '  Accept All Rules and Regulations :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Yes ',
                            groupValue: _selectedOption,
                            onChanged: (value) {
                              setState(() {
                                _selectedOption = value!;
                              });
                            },
                          ),
                          Text('Yes'),
                          Radio<String>(
                            activeColor: Colors.blue,
                            focusColor: Colors.blue,

                            value: 'No',
                            groupValue: _selectedOption,
                            onChanged: (value) {
                              setState(() {
                                _selectedOption = value!;
                              });
                            },
                          ),
                          Text('No'),
                        ],
                      ),

                      SizedBox(height: 22,),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(All_prodicts_Screen());
                        },
                        child: Text(' SING IN ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 60),
                            shadowColor: Colors.blue,
                            backgroundColor: Colors.blue
                        ),
                      ),
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
