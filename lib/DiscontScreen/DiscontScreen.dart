import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscontScreen extends StatefulWidget {
  const DiscontScreen({super.key});

  @override
  State<DiscontScreen> createState() => _DiscontScreenState();
}

class _DiscontScreenState extends State<DiscontScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   title: Text(
      //     'Add Prodest ',
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      // ),
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Add ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 19)),
                    TextSpan(
                        text: ' Prodicts ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 19,
                        )),
                  ]))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.delete_outline)),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/image/ferdaus.jpg'),
                      ),
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                color: Colors.white,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, indext) {
                      return Container(
                        margin: EdgeInsets.only(
                          bottom: 6,
                        ),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    color: Colors.white,
                                  ),
                                  Image.asset(
                                    'assets/image/mac-card-50-transfer-202310.jpeg',
                                    fit: BoxFit.cover,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    ' Macbok Air M2 pro ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    ' \$350020 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: CircleAvatar(child: Icon(Icons.cancel)),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(11),
                                 
                                ),
                              ),



                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(' 8 Items',style: TextStyle(fontWeight: FontWeight.w300),),
                    Text(' T  \$255000',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                  ],
                ),
              ),
              ElevatedButton(onPressed: (){}, child:Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                style: ElevatedButton.styleFrom(minimumSize: Size(400, 50),backgroundColor: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
