import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartshopes/Add%20To%20Buy/BuyProdectsScreen.dart';
import 'package:smartshopes/All_Prodict_Screen_Home/All_Prodicts_Screen.dart';
import 'package:smartshopes/HomeScreenTwo/HomeScreenTwo.dart';
import 'package:smartshopes/ModulesScreenforProdecits/SamsungModulesScreenforProdecits.dart';

class Add_to_Favreat extends StatefulWidget {
  String ImagePath;
  String title;
  double pircs;

  Add_to_Favreat(
      {super.key,
      required this.title,
      required this.ImagePath,
      required this.pircs});

  @override
  State<Add_to_Favreat> createState() => _Add_to_FavreatState();
}

class _Add_to_FavreatState extends State<Add_to_Favreat> {
  bool isCartClicked = false;

  @override
  Widget build(BuildContext context) {
    double Hight = MediaQuery.of(context).size.height * 1;
    double whight = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(PaymentScreen());
                        // Get.to(()=> HomeScreenTwo());
                      },
                      child: Container(
                        child: Icon(Icons.shopping_cart_outlined),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    //
                    InkWell(
                      onTap: () {
                        setState(() {
                          isCartClicked =
                              !isCartClicked; // Toggle the color change
                        });
                      },
                      child: Container(
                        child: Icon(
                          Icons.favorite,
                          color: isCartClicked
                              ? Colors.red
                              : Colors.grey, // Change color when clicked
                        ),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(22)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Text(
                            ' SAMSUNG F15',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: Colors.blueGrey.shade200),
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/image/Samsung-Galaxy-F15-5G.jpg',
                        height: Hight * 0.2,
                        width: whight * 0.2,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            elevation: 1,
                            child: Container(
                              child: Image.asset(
                                'assets/image/Samsung-Galaxy-F15-5G.jpg',
                                fit: BoxFit.cover,
                              ),
                              height: Hight * 0.099,
                              width: whight * 0.090,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(17),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Card(
                            elevation: 1,
                            child: Container(
                              child: Image.asset(
                                'assets/image/samsung3.jpg',
                                fit: BoxFit.cover,
                              ),
                              height: Hight * 0.099,
                              width: whight * 0.090,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Card(
                            elevation: 1,
                            child: Container(
                              child: Image.asset(
                                'assets/image/RRD0KhpKg0v2hU5hMHEXoF1stSnL9uAdGI4X9Fzh.webp',
                                fit: BoxFit.cover,
                              ),
                              height: Hight * 0.099,
                              width: whight * 0.090,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Card(
                            elevation: 3,
                            child: Container(
                              child: Image.asset(
                                'assets/image/s21-fe-160-web-fel.png',
                                fit: BoxFit.cover,
                              ),
                              height: Hight * 0.099,
                              width: whight * 0.090,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Availably  GB ',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                      height: 47,
                      width: 70,
                      child: Center(
                          child: Text(
                        '4 GB ',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blue)),
                    ),

                    Container(
                      height: 47,
                      width: 70,
                      child: Center(
                          child: Text(
                        '8 GB ',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blue)),
                    ),
                    Container(
                      height: 47,
                      width: 70,
                      child: Center(
                          child: Text(
                        '12 GB ',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.blue)),
                    ),
                    Container(
                      height: 47,
                      width: 70,
                      child: Center(
                          child: Text(
                        '16 GB ',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Availaby Storagy ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ],

                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /// এখানে   থেকে ষুরু Stroagy MB
                    Container(
                      height: 47,
                      width: 70,
                      child: Center(
                          child: Text(
                        '16 GB ',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blue),
                      ),
                    ),


                    Container(
                      height: 47,
                      width: 70,
                      child:  Center(child: Text('32 GB ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blue),


                      ),
                    ),

                    Container(
                      height: 47,
                      width: 70,
                      child:  Center(child: Text('62 GB ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blue),


                      ),
                    ),


                    Container(
                      height: 47,
                      width: 70,
                      child:  Center(child: Text('116 GB ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blue),


                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Availably  Colors  ',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      // child:  Center(child: Text('16 GB ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      // child:  Center(child: Text('16 GB ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: Colors.red,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      // child:  Center(child: Text('16 GB ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: Colors.black,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      // child:  Center(child: Text('16 GB ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: Colors.deepPurple,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 26,
                      child: InkWell(
                        onTap: () {
                          Get.to(PaymentScreen());
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              '55000 TK\৳',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                          ),
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
