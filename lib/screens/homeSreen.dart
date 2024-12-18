import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetchecker/screens/payment_screen.dart';
import 'package:internetchecker/utils/routes/routeNames.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      
      appBar: AppBar(leading: InkWell(
      onTap: (){
        Get.back();
      },
      child: Icon(Icons.arrow_back)),),
       body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('this is home screen'),
          ElevatedButton(onPressed: (){
           Get.toNamed(Routenames.paymentScreen);
          }, child: Text('Click')),
        ],
      ),),
    );
  }
}