import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bkash extends StatefulWidget {
  const Bkash({super.key});

  @override
  State<Bkash> createState() => _BkashState();
}

class _BkashState extends State<Bkash> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController agentNumberController = TextEditingController();
  final TextEditingController tkController = TextEditingController(); // টাকার জন্য নতুন কন্ট্রোলার
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      Get.snackbar('Massage', 'Payment Successful');
    } else {
      Get.snackbar('Error', 'Please correct the errors in the form');
    }
  }

  String? agentNumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Agent Number is required';
    } else if (!RegExp(r'^[0-9]{11}$').hasMatch(value)) {
      return 'Enter a valid 11-digit agent number';
    }
    return null;
  }

  String? tkValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'TK is required';
    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Enter a valid amount';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? confirmPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm Password is required';
    } else if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    'assets/image/bkashTwo.webp',
                    height: 180,
                    width: 180,
                  ),
                  TextFormField(
                    controller: agentNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text('Agent Number '),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    validator: agentNumberValidator,
                  ),

                  SizedBox(height: 12),
                  TextFormField(
                    controller: tkController, // টাকার জন্য নতুন কন্ট্রোলার
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text('TK'),
                      hintText: 'Enter Your TK',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    validator: tkValidator, // টাকার জন্য ভ্যালিডেশন
                  ),

                  SizedBox(height: 12),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('Password'),
                      hintText: 'Enter Bkash Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    validator: passwordValidator,
                  ),

                  SizedBox(height: 10),
                  TextFormField(
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('Confirm Password'),
                      hintText: 'Enter Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    validator: confirmPasswordValidator,
                  ),
                  SizedBox(height: 11),
                  ElevatedButton(
                    onPressed: validateAndSubmit, // ভ্যালিডেশন সহ সাবমিট
                    child: Text('Confirm Pay'),
                    style: ElevatedButton.styleFrom(
                      elevation: 6,
                      shadowColor: Colors.blue,
                      minimumSize: Size(400, 60),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
