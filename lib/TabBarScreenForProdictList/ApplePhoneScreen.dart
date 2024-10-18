import 'package:flutter/material.dart';
import 'package:smartshopes/ModulesScreenforProdecits/ComputersMoldes.dart';

import '../ModulesScreenforProdecits/A_To_Z_Modles.dart';
import '../ModulesScreenforProdecits/Macbook.dart';
import '../ModulesScreenforProdecits/Modules_SamsungScreen.dart';
import '../ModulesScreenforProdecits/NikeModles2.dart';
import '../ModulesScreenforProdecits/ShozeModels.dart';
import '../ModulesScreenforProdecits/TVMoldesl.dart';
import '../ModulesScreenforProdecits/WatchModles.dart';

class ApplePhoneScreen extends StatefulWidget {
  const ApplePhoneScreen({super.key});

  @override
  State<ApplePhoneScreen> createState() => _ApplePhoneScreenState();
}

class _ApplePhoneScreenState extends State<ApplePhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 4,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'A P L E ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black)),
              TextSpan(
                  text: ' TEC ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.blue)),
            ]))
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 450,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: macbook.length,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: Offset(90, 7),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                    size: 26,
                                  ))),
                          Stack(
                            children: [Image.asset(macbook[indext].MackImage)],
                          ),
                          Text(
                            macbook[indext].Title,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '৳' + shose[indext].Princes.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text('Colrs ' + shose[indext].Colrs),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
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
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: Offset(90, 16),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite))),
                          Stack(
                            children: [
                              Image.asset(allmodels[indext].allsimage)
                            ],
                          ),
                          Text(
                            nike2[indext].Title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            '৳' + nike2[indext].Princes.toString(),
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text('Colors ' + nike2[indext].Colrs),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tv.length,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: Offset(90, 7),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 26,
                                  ))),
                          Stack(
                            children: [Image.asset(tv[indext].TVsimage)],
                          ),
                          Text(
                            tv[indext].Title,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '৳' + tv[indext].Princes.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text('Colrs ' + shose[indext].Colrs),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 420,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: watch.length,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: Offset(90, 7),
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
                                watch[indext].watchsimage,
                                height: 300,
                                width: 300,
                              )
                            ],
                          ),
                          Text(
                            watch[indext].Title,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '৳' + watch[indext].Princes.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text('Colrs ' + shose[indext].Colrs),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sansung.length,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors. white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: Offset(90, 7),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                    size: 26,
                                  ))),
                          Stack(
                            children: [Image.asset(computer[indext].computerImage.toString(),height: 240,width: 240,)],
                          ),
                          Text(
                            shose[indext].Title,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '৳' + shose[indext].Princes.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text('Colrs ' + shose[indext].Colrs),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
