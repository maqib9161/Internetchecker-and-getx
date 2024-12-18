import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetchecker/InternetCheckScreen.dart';
import 'package:internetchecker/positionedanimation.dart';
import 'package:internetchecker/screens/homeSreen.dart';
import 'package:internetchecker/screens/loginScreen.dart';
import 'package:internetchecker/screens/payment_screen.dart';
import 'package:internetchecker/tween.dart';
import 'package:internetchecker/tweenAnimation.dart';
import 'package:internetchecker/utils/routes/routeNames.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: LoginScreen(),
      initialRoute: Routenames.loginScreen,
      getPages: [
        GetPage(name: Routenames.loginScreen, page:()=>  LoginScreen()),
          GetPage(name:Routenames.homeScreen, page:()=>  HomeScreen(),transition: Transition.circularReveal,transitionDuration: Duration(seconds: 4)),
           GetPage(name: Routenames.paymentScreen, page:()=>  PaymentScreen(),transition: Transition.circularReveal)
      ],
    );
  }
}
