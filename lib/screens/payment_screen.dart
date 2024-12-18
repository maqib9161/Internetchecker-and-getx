import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetchecker/screens/homeSreen.dart';
import 'package:internetchecker/screens/loginScreen.dart';
import 'package:internetchecker/utils/routes/routeNames.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
     
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('this is payment screen'),
          ElevatedButton(onPressed: (){
            Get.offNamed(Routenames.homeScreen);
          }, child: Text('Click')),
        ],
      ),),
    );
  }
}