import 'package:flutter/material.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = MediaQuery.sizeOf(context).width;
    print(screenWidth);

    // int crossAxisCount = (screenWidth > 600) ? 3 : 2;
    int crossAxisCount = getCrossAxisCount(screenWidth);

    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          // child: ListView.builder(
          //     itemCount: 10,
          //     itemBuilder: (context, index) {
          //       return Row(
          //         children: [
          //           Expanded(
          //               flex: 10,
          //               child: Row(
          //                 children: [
          //                   Card(
          //                     child: Center(
          //                       widthFactor: 4,
          //                       heightFactor: 10,
          //                       child: Text("hello $index"),
          //                     ),
          //                   ),
          //                 ],
          //               )),
          //         ],
          //       );
          //     }),
          child: GridView.count(
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            crossAxisCount: crossAxisCount,
            childAspectRatio: screenWidth / (crossAxisCount * 300),
            shrinkWrap: true,
            children: List.generate(10, (index) {
              return const Card(
                  child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
              ));
            }),
          ),
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

int getCrossAxisCount(double screenWidth) {
  final breakPoints = {
    800: 2,
    1200: 3,
    // 1000: 5,
  };

  for (var i in breakPoints.keys) {
    if (screenWidth >= i) {
      return breakPoints[i]!;
    }
  }
  return 1;
}
