import 'package:flutter/material.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        Card(
                          child: Center(
                            child: Text("hello $index"),
                            widthFactor: 4,
                            heightFactor: 10,
                          ),
                        ),
                      ],
                    ));
              }),
          // child: GridView.count(
          //   mainAxisSpacing: 15,
          //   crossAxisSpacing: 15,
          //   crossAxisCount: 3,
          //   children: List.generate(10, (index) {
          //     return Card(
          //       child: Center(
          //         child: Text("text $index"),
          //         heightFactor: 100,
          //         widthFactor: 100,
          //       ),
          //     );
          //   }),
          // ),
        ),
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
