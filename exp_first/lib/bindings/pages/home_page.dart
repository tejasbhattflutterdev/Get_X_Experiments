import 'package:flutter/material.dart';

class TempHomePage extends StatelessWidget {
  const TempHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temporary Page'),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
