import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:smartshopes/Add_to_Favtet/Add_to_Favreat.dart';
import 'package:smartshopes/DataMoudelsInformaions/ApplesModles.dart';
import 'package:smartshopes/ModulesScreenforProdecits/A_To_Z_Modles.dart';
import 'package:smartshopes/ModulesScreenforProdecits/Macbook.dart';
import 'package:smartshopes/ModulesScreenforProdecits/WatchModles.dart';
import 'package:smartshopes/TabBarScreenForProdictList/AirProdictsScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/ApplePhoneScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/AppleWatchScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/NikeProdictsScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/TVProdictsScreen.dart';

import '../ModulesScreenforProdecits/AirProdsModels.dart';
import '../ModulesScreenforProdecits/ComputersMoldes.dart';
import '../ModulesScreenforProdecits/Modules_SamsungScreen.dart';
import '../ModulesScreenforProdecits/ShozeModels.dart';
import '../ModulesScreenforProdecits/TVMoldesl.dart';

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
    final Highit = MediaQuery.of(context).size.height * 1;
    final Whith = MediaQuery.of(context).size.height * 1;
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
                                margin: EdgeInsets.only(
                                  right: 2,
                                ),
                                height: 330,
                                width: 220,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.blue,

                                    )),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.translate(
                                        offset: Offset(80, 6),
                                        child: InkWell(
                                          onTap: () {
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
                                            margin: EdgeInsets.only(left: 10),
                                            height: 130,
                                            width: 140,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
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
                                            fontSize: 14, color: Colors.purple),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '\৳' +
                                            sansung[index]
                                                .SmaungPrices
                                                .toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Apple ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 350,
                    width: double.infinity,
                    color: Colors.white,
                    child: ListView.builder(
                        itemCount: macbook.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, indext) {
                          return Container(
                            margin: EdgeInsets.only(right: 5, left: 9),
                            height: 300,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(22),
                                border:
                                    Border.all(color: Colors.blue, )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Transform.translate(
                                    offset: Offset(100, -11),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.grey,
                                      size: 28,
                                    )),
                                Stack(
                                  children: [
                                    Image.asset(
                                      macbook[indext].MackImage,
                                      height: 200,
                                      width: 200,
                                    ),
                                  ],
                                ),
                                Text(
                                  macbook[indext].Title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                                Text(
                                  '\৳' + macbook[indext].Princes.toString(),
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('Color  ' +
                                    macbook[indext].Colrs.toString()),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Air prods ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),

              /// তিতিও  কাজ শুরু

              Container(
                height: 335,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: airpords.length,
                    itemBuilder: (context, indext) {
                      return Container(
                        margin: EdgeInsets.only(right: 6, left: 7),
                        width: 250,
                        height: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(27),
                          border: Border.all(color: Colors.blue, ),
                        ),
                        child: Column(
                          children: [
                            Transform.translate(
                                offset: Offset(81, 8),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      size: 26,
                                      color: Colors.grey,
                                    ))),
                            Stack(
                              children: [
                                Image.asset(
                                  airpords[indext].airpordsimage,
                                  height: 210,
                                  width: 210,
                                ),
                              ],
                            ),
                            Text(
                              airpords[indext].Title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              '৳' + airpords[indext].Princes.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text('Colors ' + airpords[indext].Colrs),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ' Watch  ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                height: 380,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: watch.length,
                    itemBuilder: (context, indext) {
                      return Container(
                        margin: EdgeInsets.only(right: 5, left: 5),
                        height: 300,
                        width: 260,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Column(
                          children: [
                            Transform.translate(
                                offset: Offset(95, 4),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.grey,
                                      size: 29,
                                    ))),
                            Stack(
                              children: [
                                Image.asset(
                                  watch[indext].watchsimage,
                                  height: 270,
                                  width: 270,
                                ),
                              ],
                            ),
                            Text(
                              watch[indext].Title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              '\$' + watch[indext].Princes.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text('Colors ' + watch[indext].Colrs),
                          ],
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Computer ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 360,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: computer.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, indext) {
                      return Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        height: 350,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(
                              color: Colors.blue,
                            )),
                        child: Column(
                          children: [
                            Transform.translate(
                                offset: Offset(95, 5),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.grey,
                                      size: 26,
                                    ))),
                            Stack(
                              children: [
                                Image.asset(
                                  computer[indext].computerImage,
                                  height: 200,
                                  width: 200,
                                ),
                              ],
                            ),
                            Text(
                              computer[indext].Title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              '৳' + computer[indext].Princes.toString(),
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Colors ' + computer[indext].Colrs.toString()),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '  Samsung TV ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                height: 370,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tv.length,
                    itemBuilder: (context, indext) {
                      return Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        height: 350,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Column(
                          children: [
                            Transform.translate(
                                offset: Offset(90, 16),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.grey,
                                      size: 27,
                                    ))),
                            Stack(
                              children: [
                                Image.asset(
                                  tv[indext].TVsimage,
                                  height: 250,
                                  width: 250,
                                ),
                              ],
                            ),
                            Text(
                              tv[indext].Title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              '৳' + tv[indext].Princes.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text(tv[indext].Colrs),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: allmodels.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, indext) {
                      return Container(
                        height: 340,
                        margin: EdgeInsets.only(left: 6, right: 5),
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Column(
                          children: [
                            Transform.translate(
                                offset: Offset(95, 6),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      size: 26,
                                      color: Colors.grey,
                                    ))),
                            Stack(
                              children: [
                                Image.asset(allmodels[indext].allsimage)
                              ],
                            ),
                            Text(
                              allmodels[indext].Title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            Text(
                              '৳' + allmodels[indext].Princes.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 20),
                            ),
                            Text(
                              'Colors ' + allmodels[indext].Colrs,
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                height: 420,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: shose.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, indext) {
                      return Container(
                        margin: EdgeInsets.only(left: 6, right: 6),
                        height: 370,
                        width: 270,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(22)),
                        child: Column(
                          children: [
                            Transform.translate(
                                offset: Offset(90, 9),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.grey,
                                      size: 26,
                                    ))),
                            Stack(
                              children: [
                                Image.asset(shose[indext].shogeimage,height: 290,width: 290,fit: BoxFit.cover,),
                              ],
                            ),
                            Text(shose[indext].Title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            Text( '\$'+shose[indext].Princes.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 16),),

                            Text('Colors '+shose[indext].Colrs,),
                          ],
                        ),
                      );
                    }),
              ),
                 SizedBox(height: 20,),
                 Container(height: 380,width: double.infinity,
                   color: Colors.white,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: sansung.length,
                       itemBuilder: (context, indext ){
                     return Container(
                       height: 360,
                       width: 250,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(22),
                         border: Border.all(color: Colors.blue),
                       ),
                       margin: EdgeInsets.only(left: 6,right: 6),
                       child: Column(
                         children: [
                           Icon(Icons.favorite,color: Colors.grey,),
                           Stack(
                             children: [
                               Image.asset(sansung[indext].ImagePath.toString())
                             ],
                           ),
                           Text(sansung[indext].TitleText.toString(),style: TextStyle(fontWeight: FontWeight.bold,),),

                           Text(sansung[indext].SmaungPrices.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                         ],
                       ),
                     );
                   }),
                 ),
               SizedBox(height: 22,),
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.blue,

              )
            ],
          ),
        ),
      ),
    );
  }
}
