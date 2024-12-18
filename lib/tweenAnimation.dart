import 'package:flutter/material.dart';


class MoveAnimationApp extends StatelessWidget {
  const MoveAnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoveAnimationExample(),
    );
  }
}

class MoveAnimationExample extends StatefulWidget {
  const MoveAnimationExample({super.key});

  @override
  _MoveAnimationExampleState createState() => _MoveAnimationExampleState();
}

class _MoveAnimationExampleState extends State<MoveAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _positionAnimation;

  @override
  void initState() {
    super.initState();

    // 1. Initialize the AnimationController
    _controller = AnimationController(
      animationBehavior: AnimationBehavior.preserve,
      duration: const Duration(seconds: 2), // Animation duration
      vsync: this, // TickerProvider
    );

    // 2. Define the Tween for position animation
    _positionAnimation = Tween<Offset>(
      begin:  Offset(300, 500), // Starting position (top-left)
      end:  Offset(0, 0), // Ending position (x: 200, y: 300)
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
_controller.reverse();
    // 3. Start the animation

  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller to free resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Move Animation Example')),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _positionAnimation,
            builder: (context, child) {
              return Positioned(
                right: _positionAnimation.value.dx,
                top: _positionAnimation.value.dy,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
