import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:smartshopes/Add%20To%20Buy/BuyProdectsScreen.dart';
import 'package:smartshopes/Add_to_Favtet/Add_to_Favreat.dart';
import 'package:smartshopes/All_Prodict_Screen_Home/All_Prodicts_Screen.dart';
import 'package:smartshopes/DiscontScreen/DiscontScreen.dart';
import 'package:smartshopes/HomeScreenTwo/HomeScreenTwo.dart';
import 'package:smartshopes/NotificationsScreen/NotificationsScreen.dart';
import 'package:smartshopes/TabBarScreenForProdictList/SMS_Screen.dart';
import 'package:smartshopes/accountScreen/accountScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _CrentPage = 0;
  final List AllPage = [
    All_prodicts_Screen(),
    Add_to_Favreat(title: '', ImagePath: '', pircs: 5),
    PaymentScreen(),
    accountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Smart ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.black))),
              Text.rich(TextSpan(
                  text: 'Shope',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)))
            ],
          ),

          // title: Text(
          //   'Smart Shope ',
          //   style: TextStyle(
          //       fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
          // ),

          elevation: 2,

          centerTitle: true,
          actions: [

            IconButton(
              onPressed: () {
                Get.to(DiscontScreen());
              },
              icon: Icon(Icons.redeem),
            ),
            // SizedBox(
            //   width: 6,
            // ),
            IconButton(onPressed: (){
              Get.to(SMS());
            }, icon: Icon(Icons.sms_outlined)),
            IconButton(
                onPressed: () {
                  Get.to(NotificationsScreen());
                },
                icon: Icon(Icons.notifications_none)),
            // SizedBox(
            //   width: 9,
            // ),
          ],
        ),

        //This is a Drawer function

        drawer: Drawer(
          elevation: 2,
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Colors.white70,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        UserAccountsDrawerHeader(
                          currentAccountPicture: InkWell(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/image/ferdaus.jpg'),
                            ),
                            onTap: () {
                              Get.to(accountScreen());
                            },
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          otherAccountsPictures: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/image/ferdaushossan2.jpg'),
                            ),
                          ],
                          accountName: Text('ferdaus '),
                          accountEmail: Text(
                            'ferdaushossan7788990@gmail.com',
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(

                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text('account Info'),
                  trailing: CircleAvatar(
                      child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  )),
                  onTap: () {
                    Get.to(accountScreen());
                  },
                  shape: StadiumBorder(),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Card(

                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.phonelink_setup)),
                  title: Text('App Info'),
                  trailing: CircleAvatar(
                      child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  )),
                  onTap: () {
                    Get.to(accountScreen());
                  },
                  shape: StadiumBorder(),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.paid_rounded)),
                  title: Text(' Pro Verson   '),
                  trailing: CircleAvatar(
                      child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  )),
                  onTap: () {
                    Get.to(accountScreen());
                  },
                  shape: StadiumBorder(),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/ferdaus.jpg'),
                  ),
                  title: Text(' About Me '),
                  trailing: CircleAvatar(
                      child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  )),
                  onTap: () {
                    Get.to(accountScreen());
                  },
                  shape: StadiumBorder(),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              SizedBox(
                height: 21,
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.settings_sharp)),
                  title: Text('  setting  '),
                  trailing: CircleAvatar(
                      child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  )),
                  onTap: () {
                    Get.to(accountScreen());
                  },
                  shape: StadiumBorder(),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: Card(
          elevation: 2,
        shadowColor: Colors.blue,

          margin: EdgeInsets.all(7),
          child: SalomonBottomBar(
            currentIndex: _CrentPage,
            onTap: (int _index) {
              setState(() {
                _CrentPage = _index;
              });
            },
            items: [
              SalomonBottomBarItem(
                  icon: Icon(Icons.home_outlined),
                  title: Text('Home'),
                  selectedColor: Colors.green),
              SalomonBottomBarItem(
                  icon: Icon(Icons.favorite_border),
                  title: Text('Favreat '),
                  selectedColor: Colors.blue),
              SalomonBottomBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  title: Text('  Buy')),
              SalomonBottomBarItem(
                  icon: Icon(Icons.perm_identity),
                  title: Text('account'),
                  selectedColor: Colors.purple),
            ],
          ),
        ),

        body: AllPage[_CrentPage],
      ),
    );
  }
}
