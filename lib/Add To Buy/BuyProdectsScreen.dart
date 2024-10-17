import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smartshopes/bkash_pay/bkash_pays.dart';

import '../LoginScreen/LoginScreen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? _selectedPaymentMethod; // Store the selected payment method
  int value = 1;

  // Form key for validation
  final _formKey = GlobalKey<FormState>();

  // Controller for mobile number
  final TextEditingController _mobileController = TextEditingController();

  @override
  void dispose() {
    _mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Pay',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 19)),
                TextSpan(
                    text: 'ment',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue))
              ]),
            )
          ],
        ),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 22),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey, // Assigning form key
                child: Column(
                  children: [
                    SizedBox(height: 23),
                    TextFormField(
                      controller: _mobileController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          label: Text(
                            'Payment',
                            style: TextStyle(color: Colors.blue),
                          ),
                          hintText: 'Enter Your Mobile Number ',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(15),
                          )),
                      // Validation for mobile number
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your mobile number';
                        } else if (value.length != 11) {
                          return 'Mobile number must be 11 digits';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    Card(
                      shadowColor: Colors.blue,
                      elevation: 2,
                      child: InkWell(
                        onTap: () {
                          Get.to(Bkash());
                        },
                        child: Container(
                          height: 70,
                          width: 400,
                          child: ListTile(
                            trailing: Radio(
                                value: 1,
                                groupValue: value,
                                onChanged: (values) {
                                  setState(() {
                                    value = values!;
                                  });
                                }),
                            title: Text('Bkash'),
                            leading: Image.asset('assets/image/R.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    Card(
                      elevation: 1,
                      child: Container(
                        height: 70,
                        width: 400,
                        child: ListTile(
                          trailing: Radio(
                              value: 2,
                              groupValue: value,
                              onChanged: (values) {
                                setState(() {
                                  value = values!;
                                });
                              }),
                          title: Text('Nagad'),
                          leading: Image.asset(
                              'assets/image/1679248787Nagad-Logo.webp'),
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    Card(
                      elevation: 1,
                      child: Container(
                        height: 70,
                        width: 400,
                        child: ListTile(
                          trailing: Radio(
                              value: 3,
                              groupValue: value,
                              onChanged: (values) {
                                setState(() {
                                  value = values!;
                                });
                              }),
                          title: Text('Paypal'),
                          leading:
                          Image.asset('assets/image/paypal-logo-0.png'),
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    SizedBox(height: 39),
                    ElevatedButton(
                      onPressed: () {
                        // Check if form is valid before proceeding
                        if (_formKey.currentState!.validate()) {
                          Get.to(Bkash());
                        }
                      },
                      child: Text(
                        'Pay',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(330, 60),
                          backgroundColor: Colors.blue.shade500,
                          textStyle:
                          TextStyle(fontSize: 19, color: Colors.white)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
