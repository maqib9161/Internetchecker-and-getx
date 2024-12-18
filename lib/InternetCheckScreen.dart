import 'package:flutter/material.dart';
import 'package:internetchecker/heroScreen.dart';
import 'package:internetchecker/internetController.dart';

class Internetcheckscreen extends StatefulWidget {
  const Internetcheckscreen({super.key});

  @override
  State<Internetcheckscreen> createState() => _InternetcheckscreenState();
}

class _InternetcheckscreenState extends State<Internetcheckscreen> {
  bool? checkInternet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: ()async{
                print(await   internetchecker());
                
             checkInternet=await   internetchecker();
             setState(() {
               
             });
           
             if(checkInternet==true){
              showModalBottomSheet(context: context, builder: (BuildContext context) {
                return MyBottomSheet();
              });

             }
            }, child: Text("Check internet"),
            
            ),
          ),
          ElevatedButton(onPressed: ()
          {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HeroScreen()));
          }, child: Text('navigaet to hero')),
          Hero(
            tag:'intenrt connected',
            
            child: Text(checkInternet==true?'intenrt connected':'please check your internet'))
          

        ],
      )
    );
  }
}

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Text('internet connectd okay '));
  }
}