import 'package:flutter/material.dart';

class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key});

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen>  {
bool isZoom=false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('intenrt connected'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
            AnimatedContainer(
              
              width:isZoom? 100:300,height:isZoom? 100:300,color: Colors.red, duration: Duration(seconds: 2),curve: Curves.slowMiddle),
            ElevatedButton(onPressed: (){
               if(isZoom==true){
                  isZoom=false;
                  setState(() {
                    
                  });
                }else{
                  isZoom=true;
                  setState(() {
                    
                  });
                }
            }, child: Text('animate please'))

          ],
        ),
    );
  }
}