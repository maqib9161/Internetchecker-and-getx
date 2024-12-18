import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetchecker/screens/homeSreen.dart';
import 'package:internetchecker/utils/routes/routeNames.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
  Future.delayed(Duration(seconds: 4),(){
    Get.offAllNamed(Routenames.homeScreen);
  });

    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
       body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('this is login screen'),
          ElevatedButton(onPressed: (){
            // Get.toNamed(Routenames.homeScreen);
          }, child: Text('Click')),
        ],
      ),),
    );
  }
}