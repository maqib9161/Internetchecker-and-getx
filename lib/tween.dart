import 'package:flutter/material.dart';

class TweenScreen extends StatefulWidget {
   TweenScreen({super.key});

  @override
  State<TweenScreen> createState() => _TweenState();
}

class _TweenState extends State<TweenScreen> with SingleTickerProviderStateMixin{
  late Animation animation;
Animation? coloranimation;
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =AnimationController(vsync:this,duration: Duration(seconds: 4));
    animation=Tween<double>(begin:0.0,end: 200.0).animate(animationController);
    coloranimation=ColorTween(begin: Colors.red,end: Colors.yellow).animate(animationController);
    animationController.addListener((){
      setState(() {
        
      });
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Tween"),),
      body: Column(
        children: [
          Center(
            child: Container(
              width: animation.value,
              height: animation.value,
              color: coloranimation?.value,
            ),
          ),
          FloatingActionButton(
            child: Icon(Icons.play_arrow),
            onPressed: (){
            
          })
          
        ],
      ),

    );
  }
}