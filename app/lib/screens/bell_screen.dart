import 'package:flutter/material.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "bell",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
