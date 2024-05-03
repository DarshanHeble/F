import 'package:flutter/material.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQueryData mediaQueryData = MediaQuery.of(context);
    // double screenWidth = MediaQuery.sizeOf(context).width;
    // print(screenWidth);

    return Scaffold(
        body: Row(
      children: [
        Stack(
          children: [
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: LayoutBuilder(builder: (context, constraints) {
                  int columns = (constraints.maxWidth >= 1200)
                      ? 3
                      : (constraints.maxWidth >= 800)
                          ? 2
                          : 1;

                  double cardWidth = constraints.maxWidth / columns - 16;

                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columns,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: cardWidth / 200,
                    ),
                    itemBuilder: (context, index) => buildCard(),
                  );
                })),
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
        ),
      ],
    ));
  }

  Widget buildCard() {
    return const Card(
      child: Column(
        children: [
          Text(
            "2:21 am",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text("Hello"),
          Text("Bell.mp3"),
          Row(
            children: [
              Text("S "),
              Text("M "),
              Text("T "),
              Text("W "),
              Text("T "),
              Text("F "),
              Text("S "),
            ],
          )
        ],
      ),
    );
  }
}
