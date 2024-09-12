import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:smartshopes/Add%20To%20Buy/BuyProdectsScreen.dart';
import 'package:smartshopes/Add_to_Favtet/Add_to_Favreat.dart';
import 'package:smartshopes/All_Prodict_Screen_Home/All_Prodicts_Screen.dart';
import 'package:smartshopes/DiscontScreen/DiscontScreen.dart';
import 'package:smartshopes/NotificationsScreen/NotificationsScreen.dart';
import 'package:smartshopes/accountScreen/accountScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _CrentPage  =0;
  final List  AllPage = [

All_prodicts_Screen(),
    Add_to_Favreat(),
    BuyProdectsScreen(),
    accountScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          title: Text(
            'Smart Shope ',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
          ),
          elevation: 1,
          centerTitle: true,
          actions: [


            IconButton(onPressed: (){
              Get.to(DiscontScreen());
            }, icon: Icon(Icons.redeem),),
            SizedBox(width: 25,),
            IconButton(onPressed: (){
              Get.to(NotificationsScreen());
            }, icon: Icon(Icons.notifications_none)),
            SizedBox(width: 11,),
          ],
        ),

        //This is a Drawer function

           drawer: Drawer(
             elevation: 11,
             width: 230,

        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _CrentPage ,
          onTap: ( int _index ){
            setState(() {
              _CrentPage = _index;
            });
          },
          items: [


            SalomonBottomBarItem(

                icon: Icon(Icons.home_outlined), title: Text('Home'),selectedColor: Colors.green),
            SalomonBottomBarItem(
                icon: Icon(Icons.favorite_border), title: Text('Favreat '),selectedColor: Colors.blue),
            SalomonBottomBarItem(
                icon: Icon(Icons.shopping_cart_outlined), title: Text('  Buy')),
            SalomonBottomBarItem(
                icon: Icon(Icons.perm_identity), title: Text('account'),selectedColor: Colors.purple),

          ],


        ),


body: SafeArea(
  child: AllPage[_CrentPage],

),



      ),
    );

  }
}
