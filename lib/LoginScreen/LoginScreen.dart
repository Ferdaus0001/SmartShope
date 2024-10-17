import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartshopes/HomeScreen/HomeScreen.dart';
import 'package:smartshopes/SingupScrren/SingupSceen.dart';
import '../All_Prodict_Screen_Home/All_Prodicts_Screen.dart';
import '../FrogetPassword/ForgetPasswordHomeScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool _isPasswordVisible = false;
  bool _isLoading = false; // Loading state

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true; // Start loading
      });

      try {
        await auth.signInWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString());
        // Get.to(All_prodicts_Screen());
        Get.to(HomeScreen());
      } catch (e) {
        // Handle login error
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Login failed: $e")));
      } finally {
        setState(() {
          _isLoading = false; // Stop loading
        });
      }
    }
  }

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
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 11),
              child: Text(
                'Hello \n Login In! ',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
                  topRight: Radius.circular(42),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        TextFormField(

                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your email';
                            }
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                            return null;
                          },
                          keyboardType: TextInputType. emailAddress
                          ,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email_outlined),
                            hintText: 'abc@email.com',
                            hintStyle: TextStyle(color: Colors.blue),
                            label: Text(
                              'Email',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(height: 26),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: passwordController,
                          obscureText: !_isPasswordVisible,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your password';
                            }
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                            hintText: 'At least 6 digits',
                            hintStyle: TextStyle(color: Colors.blue),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(ForgetPassword());
                              },
                              child: Text('Forget Password')),
                        ),
                        SizedBox(height: 32),
                        _isLoading
                            ? CircularProgressIndicator() // Show loading spinner
                            : ElevatedButton(
                                onPressed: _login,
                                child: Text(
                                  'Login IN',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(400, 60),
                                  shadowColor: Colors.blue,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                        SizedBox(height: 41),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('Dont Have an account?'),
                            TextButton(
                              onPressed: () {
                                Get.to(SingupScreen());
                              },
                              child: Text(
                                'Sign UP',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
