import 'package:flutter/material.dart';

class AnnounceScreen extends StatelessWidget {
  const AnnounceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
                child: TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              style: TextStyle(),
              decoration: InputDecoration(hintText: "Enter you text"),
            )),
            const SizedBox(
              width: 30,
            ),
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow),
              iconSize: 30,
            )
          ],
        ),
      ),
    );
  }
}
