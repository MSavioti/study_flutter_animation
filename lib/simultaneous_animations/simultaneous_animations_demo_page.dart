import 'package:flutter/material.dart';
import 'package:study_flutter_animation/simultaneous_animations/animated_logo.dart';

class SimultaneousAnimationsDemoPage extends StatefulWidget {
  const SimultaneousAnimationsDemoPage({Key? key}) : super(key: key);

  @override
  State<SimultaneousAnimationsDemoPage> createState() =>
      _SimultaneousAnimationsDemoPageState();
}

class _SimultaneousAnimationsDemoPageState
    extends State<SimultaneousAnimationsDemoPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Widget DEMO'),
      ),
      body: AnimatedLogo(animation: animation),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
