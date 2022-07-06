import 'package:flutter/material.dart';
import 'package:study_flutter_animation/animated_builder/grow_transition.dart';
import 'package:study_flutter_animation/animated_builder/logo_widget.dart';

class AnimatedBuilderDemoPage extends StatefulWidget {
  const AnimatedBuilderDemoPage({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderDemoPage> createState() =>
      _AnimatedBuilderDemoPageState();
}

class _AnimatedBuilderDemoPageState extends State<AnimatedBuilderDemoPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 200, end: 300).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Widget DEMO'),
      ),
      body: GrowTransition(
        animation: animation,
        child: const LogoWidget(),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
