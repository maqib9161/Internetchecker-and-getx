import 'package:flutter/material.dart';



class PositionAnimationApp extends StatefulWidget {
  @override
  _PositionAnimationAppState createState() => _PositionAnimationAppState();
}

class _PositionAnimationAppState extends State<PositionAnimationApp> {
  bool isMoved = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds: 5),
              left: isMoved ? 310 : 0,
              top: isMoved ? 790 : 0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isMoved = !isMoved; // Toggle position
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text('Tap Me', style: TextStyle(color: Colors.white))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
