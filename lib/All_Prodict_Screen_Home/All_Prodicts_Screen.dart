import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:smartshopes/Add_to_Favtet/Add_to_Favreat.dart';
import 'package:smartshopes/DataMoudelsInformaions/ApplesModles.dart';
import 'package:smartshopes/ModulesScreenforProdecits/Macbook.dart';
import 'package:smartshopes/TabBarScreenForProdictList/AirProdictsScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/ApplePhoneScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/AppleWatchScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/NikeProdictsScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/TVProdictsScreen.dart';

import '../ModulesScreenforProdecits/Modules_SamsungScreen.dart';

class All_prodicts_Screen extends StatefulWidget {
  const All_prodicts_Screen({super.key});

  @override
  State<All_prodicts_Screen> createState() => _All_prodicts_ScreenState();
}

class _All_prodicts_ScreenState extends State<All_prodicts_Screen> {
  bool isCartClicked = false;
  final ImageLIst = [
    Image.asset('assets/image/aN5y2biC5HpLOPacEm8lJXfAkXhc4QcMXvsL5wBF.png'),
    Image.asset('assets/image/Canpaign_Banner_for_FEL_1440X640_px.png'),
    Image.asset('assets/image/vision-pro-card-66-vision-pro-202401.jpeg'),
    Image.asset('assets/image/computer.webp'),
    Image.asset('assets/image/appbok001.jpg'),
  ];
  int CrantImageList = 0;

  bool isVavorite = false; // প্রাথমিকভাবে সব ফেভারিট false থাকবে
  @override
  Widget build(BuildContext context) {
    final Highit = MediaQuery.of(context).size.height*1;
    final Whith  = MediaQuery.of(context).size.height*1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(NikeProdictsScreen());
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/image/ipad_nike-zoom-fly-flyknit-black-flash-crimson-1.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.6,
                                ),
                                Text(
                                  'NIke',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(18)),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      // Second Continter
                      InkWell(
                        onTap: () {
                          Get.to(ApplePhoneScreen());
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/image/vision-pro-card-66-vision-pro-202401.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.5,
                                ),
                                Text(
                                  'Apple',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(18)),
                        ),
                      ),
                      // Thared Continter
                      SizedBox(
                        width: 5,
                      ),
                      // Second Continter
                      InkWell(
                        onTap: () {
                          Get.to(AppleWatchScreen());
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/image/0XFqwpsXj8jvrAHM4sjvDp7rxf8uSKClG1aO6q99.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Watch',
                                  style: TextStyle(fontSize: 10.5),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(18)),
                        ),
                      ),
                      // Fourd Continter
                      SizedBox(
                        width: 5,
                      ),
                      // Second Continter
                      InkWell(
                        onTap: () {
                          Get.to(TVProductsScreen());
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/image/ue65cu7100kxxu_001_front1_black_1_1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'TV',
                                  style: TextStyle(fontSize: 13.5),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(18)),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      // Second Continter
                      InkWell(
                        onTap: () {
                          Get.to(AirProdictsScreen());
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/image/AXpWcRfmLLdCIqwnkHm4EabyqnFCZno51XfcR6kd.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'AirPords',
                                  style: TextStyle(fontSize: 8),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(18)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// Silider Image
              SizedBox(
                height: 6,
              ),
              Column(
                children: [
                  CarouselSlider(
                    items: ImageLIst,
                    options: CarouselOptions(
                        autoPlay: true,
                        height: 130,
                        onPageChanged: (index, reson) {
                          setState(() {
                            CrantImageList = index;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    height: 340, width: 340,
                    // color: Colors.blue,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sansung.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 1,
                            child: InkWell(
                              onTap: () {
                                Get.to(
                                  Add_to_Favreat(
                                    title: sansung[index].TitleText.toString(),
                                    ImagePath:
                                        sansung[index].ImagePath.toString(),
                                    pircs:
                                        sansung[index].SmaungPrices!.toDouble(),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 1),
                                height: 330,
                                width: 220,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 0.6,
                                    )),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.translate(
                                        offset: Offset(80, 6),
                                        child: InkWell(
                                          onTap: (){
                                            setState(() {
                                              isCartClicked =
                                              !isCartClicked; // Toggle the color change
                                            });
                                          },
                                          child: Icon(
                                            Icons.favorite,
                                            color: isCartClicked
                                                ? Colors.red
                                                : Colors
                                                    .grey, // Change color when clicked
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 30),
                                            height: 130,
                                            width: 140,
                                            decoration: BoxDecoration(
                                                // color: Colors.blueGrey.shade50,
                                                borderRadius:
                                                    BorderRadius.circular(60)),
                                          ),
                                          Image.asset(
                                            sansung[index].ImagePath.toString(),
                                            height: 190,
                                            width: 190,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        ' SamSung Galzay A20',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        ' Trendign Now ',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.blue),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        sansung[index].SmaungPrices.toString(),
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  // এখন থেকে কোড সুরু
                  Text('Apple '),
                  SizedBox(height: 15,),
                  Container(
                    height: 350,
                    width: double.infinity,
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: macbook.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context , indext ){
                      return Container(
                        margin: EdgeInsets.only(right: 16),
                        height: 330,
                        width: 270 ,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.blue,width: 2)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform.translate(offset: Offset(100, -11),
                            child: Icon(Icons.favorite,color: Colors.grey,size: 28,)),
                            Stack(
                              children: [
                                Image.asset(macbook[indext].MackImage,height: 200,width: 200,),
                              ],
                              
                            ),
                            Text( macbook[indext].Title),
                            Text(macbook[indext].Princes.toString()),
                            Text(macbook[indext].Colrs.toString()),
                            Container(height: 30,width: 30,decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(55),
                            ),)
                          ],
                        ),
                      );
                    }),
                  )

                ],
              ),
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
