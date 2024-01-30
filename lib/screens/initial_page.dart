import 'package:flutter/material.dart';

class InitailPage extends StatefulWidget {
  const InitailPage({super.key});

  @override
  State<InitailPage> createState() => _InitailPageState();
}

class _InitailPageState extends State<InitailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Page'),
      ),
      body: Container(
        
      ),
    );
  }
}
