import 'package:flutter/material.dart';

class CoffeeScreen extends StatelessWidget {
  const CoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee'),
      ),
      body: Center(
        child: Text('Coffee'),
      ),
    );
  }
}
