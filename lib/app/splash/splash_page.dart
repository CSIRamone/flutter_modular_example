import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Splash Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to the next page
                 // Navigator.pushNamed(context, '/categoria');
                 Modular.to.pushNamed('/categoria', arguments: 'Hello from SplashPage');
                },
                child: const Text('Go to Categoria Page'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the next page
                 // Navigator.pushNamed(context, '/categoria');
                 Modular.to.pushNamed('/produto');

                },
                child: const Text('Go to Produto Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
