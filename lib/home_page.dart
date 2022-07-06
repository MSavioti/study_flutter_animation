import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Animated Widget Example'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/animated_widget');
                },
              ),
              ElevatedButton(
                child: const Text('Animated Builder Example'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/animated_builder');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
