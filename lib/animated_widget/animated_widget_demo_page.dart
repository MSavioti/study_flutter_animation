import 'package:flutter/material.dart';
import 'package:study_flutter_animation/animated_widget/animated_logo.dart';

class AnimatedWidgetDemoPage extends StatefulWidget {
  const AnimatedWidgetDemoPage({Key? key}) : super(key: key);

  @override
  State<AnimatedWidgetDemoPage> createState() => _AnimatedWidgetDemoPageState();
}

class _AnimatedWidgetDemoPageState extends State<AnimatedWidgetDemoPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 200, end: 300).animate(controller)
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
