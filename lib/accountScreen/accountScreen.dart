import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class accountScreen extends StatefulWidget {
  const accountScreen({super.key});

  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 13,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(70),
                ),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/image/ferdaus.jpg'),
                ),
              ),
              Card(
                
                shadowColor: Colors.blue,
                elevation: 1,
                child: ListTile(
                  onTap: () {
                    Get.snackbar('Massage ', ' No Edit ');
                  },
                  title: Text(' Name  '),
                  subtitle: Text(
                    'Ferdaus Hossan ',
                  ),
                  trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                  leading: CircleAvatar(child: Icon(Icons.person)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                shadowColor: Colors.blue,
                elevation: 1,
                child: ListTile(
                  onTap: () {
                    Get.snackbar('Massage ', ' No Edit ');
                  },
                  title: Text(' Phone   '),
                  subtitle: Text(
                    ' 01726176754  ',
                  ),
                  trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                  leading: CircleAvatar(child: Icon(Icons.phone)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                shadowColor: Colors.blue,
                elevation: 1,
                child: ListTile(
                  onTap: () {
                    Get.snackbar('Massage ', ' No Edit ');
                  },
                  title: Text(' Address   '),
                  subtitle: Text(
                    ' Jessore Ropdia Bazar Bangladesh  ',
                  ),
                  trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                  leading: CircleAvatar(child: Icon(Icons.home_work_outlined)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                shadowColor: Colors.blue,
                elevation: 1,
                child: ListTile(
                  onTap: () {
                    Get.snackbar('Massage ', ' No Edit ');
                  },
                  title: Text(' Job   '),
                  subtitle: Text(
                    'Flutter App  Developer    ',
                  ),
                  trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                  leading: CircleAvatar(child: Icon(Icons.person)),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              InkWell(
                onTap: (){
                  Get.snackbar('Massage ', 'Admin Edit ');
                },
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    'Edait ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white,fontSize: 17  ),
                  ),
                  width: 210,
                  decoration: BoxDecoration(

                    color: Colors.blueGrey.shade400,
                    borderRadius: BorderRadius.circular(55),
                    border: Border.all(color: Colors.blue,width: 2),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
