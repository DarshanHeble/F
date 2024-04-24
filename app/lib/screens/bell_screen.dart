import 'package:flutter/material.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          bottom: 50,
          right: 50,
          child: IconButton.filled(
            onPressed: () {},
            icon: const Icon(Icons.add),
            iconSize: 30,
          ),
        )
      ],
    ));
  }
}
