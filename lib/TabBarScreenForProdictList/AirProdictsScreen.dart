import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartshopes/ModulesScreenforProdecits/ShozeModels.dart';

import '../ModulesScreenforProdecits/AirProdsModels.dart';

class AirProdictsScreen extends StatefulWidget {
  const AirProdictsScreen({super.key});

  @override
  State<AirProdictsScreen> createState() => _AirProdictsScreenState();
}

class _AirProdictsScreenState extends State<AirProdictsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: ' A I R  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black)),
                  TextSpan(
                      text: '  Pords  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.blue)),
                ]))
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
        
          children: [
       SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: airpords.length,
                  itemBuilder: (context, indext ){
                return Container(
                  margin: EdgeInsets.only(left: 6,right: 6),
                  height: 350,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Column(
                    children: [
                      Transform.translate(offset: Offset(90,7),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.grey,size: 26,))),
                      Stack(
                        children: [
                          Image.asset(airpords[indext].airpordsimage)
                        ],
                      ),
                      Text(airpords[indext].Title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text('৳'+airpords[indext].Princes.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                      Text( 'Colrs '+airpords[indext].Colrs),
                    ],
                  ),
                );
              }),
            ),
           SizedBox(height: 20,),
           Container(
             height: 400,width: double.infinity,
             color: Colors.orangeAccent,
           )
          ],
        ),
      ),
    );
  }
}
