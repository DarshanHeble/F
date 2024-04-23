import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnnounceScreen extends StatelessWidget {
  const AnnounceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Expanded(
            child: TextField(
          maxLines: null,
          keyboardType: TextInputType.multiline,
          style: TextStyle(
              // color: Colors.white,
              ),
          decoration: InputDecoration(hintText: "Enter you text"),
        )),
      ),
    );
  }
}
