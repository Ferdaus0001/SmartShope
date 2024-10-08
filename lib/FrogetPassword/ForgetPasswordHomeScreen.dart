import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailController = TextEditingController();
  final List<TextEditingController> otpControllers = List.generate(4, (index) => TextEditingController()); // 4 OTP fields
  bool isOtpSent = false; // Track if OTP has been sent
  final _formKey = GlobalKey<FormState>(); // Form key for validation

  final FirebaseAuth _auth = FirebaseAuth.instance; // Firebase Auth instance

  // Function to send OTP via email using Firebase
  Future<void> sendOtpToEmail() async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth.sendPasswordResetEmail(email: emailController.text); // Sending password reset email as OTP
        setState(() {
          isOtpSent = true; // OTP Screen is shown after valid email
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('OTP has been sent to your email')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to send OTP: $e')),
        );
      }
    }
  }

  // Function to save and validate OTP (Here, for demo purposes)
  void validateAndSaveOtp() {
    if (_formKey.currentState!.validate()) {
      String otp = otpControllers.map((controller) => controller.text).join(); // Combine all OTP fields

      // For demonstration, we're showing the OTP value
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OTP Verified: $otp')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password?'),

        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey, // Form key for email validation
            child: Column(
              children: [
                SizedBox(height: 22,),
                if (!isOtpSent) // Show email input if OTP not yet sent
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter Your Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                SizedBox(height: 24),

                if (isOtpSent) // Show OTP fields if OTP is sent
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(4, (index) {
                          return SizedBox(
                            width: 60,
                            height: 60,
                            child: TextFormField(
                              controller: otpControllers[index],
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                              onChanged: (value) {
                                if (value.isNotEmpty && index < 3) {
                                  FocusScope.of(context).nextFocus();
                                } else if (value.isEmpty && index > 0) {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return ' ';
                                }
                                return null;
                              },
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: validateAndSaveOtp, // Validate and save OTP
                        child: Text(
                          'Verify OTP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size(320, 60),
                        ),
                      ),
                    ],
                  ),
                     SizedBox(height: 22,),
                if (!isOtpSent) // Show 'Send OTP' button if OTP is not sent yet
                  ElevatedButton(
                    onPressed: sendOtpToEmail,
                    child: Text(
                      'Send OTP',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(320, 60),
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
