import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../ModulesScreenforProdecits/NikeModles2.dart';
import '../ModulesScreenforProdecits/ShozeModels.dart';

class NikeProdictsScreen extends StatefulWidget {
  const NikeProdictsScreen({super.key});

  @override
  State<NikeProdictsScreen> createState() => _NikeProdictsScreenState();
}

class _NikeProdictsScreenState extends State<NikeProdictsScreen> {
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
                  text: 'N I K E ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black)),
              TextSpan(
                  text: ' Shose ',
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
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shose.length,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
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
                            children: [Image.asset(shose[indext].shogeimage)],
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
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  itemCount: nike2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
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
                            children: [Image.asset(nike2[indext].nike2simage)],
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
                  itemCount: nike2.length,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
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
                            children: [Image.asset(nike2[indext].nike2simage)],
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
            SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shose.length,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
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
                            children: [Image.asset(shose[indext].shogeimage)],
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
            SizedBox(
              height: 11,
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nike2.length,
                  itemBuilder: (context, indext) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
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
                            children: [Image.asset(nike2[indext].nike2simage)],
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
