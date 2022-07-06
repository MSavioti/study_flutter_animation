import 'package:flutter/material.dart';
import 'package:study_flutter_animation/animated_builder/animated_builder_demo_page.dart';
import 'package:study_flutter_animation/animated_widget/animated_widget_demo_page.dart';
import 'package:study_flutter_animation/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/animated_widget': (context) => const AnimatedWidgetDemoPage(),
        '/animated_builder': (context) => const AnimatedBuilderDemoPage(),
      },
    );
  }
}
