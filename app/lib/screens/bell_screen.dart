import 'package:app/controller/bell_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BellController bellController = Get.put(BellController());

    // MediaQueryData mediaQueryData = MediaQuery.of(context);
    // double screenWidth = MediaQuery.sizeOf(context).width;
    // print(screenWidth);

    // return Scaffold(
    //     body: Row(
    //   children: [
    //     Stack(
    //       children: [
    //         Padding(
    //             padding: const EdgeInsets.all(15.0),
    //             child: LayoutBuilder(builder: (context, constraints) {
    //               int columns = (constraints.maxWidth >= 1200)
    //                   ? 3
    //                   : (constraints.maxWidth >= 800)
    //                       ? 2
    //                       : 1;

    //               double cardWidth = constraints.maxWidth / columns - 16;

    //               return GridView.builder(
    //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //                   crossAxisCount: columns,
    //                   mainAxisSpacing: 10,
    //                   crossAxisSpacing: 10,
    //                   childAspectRatio: cardWidth / 200,
    //                 ),
    //                 itemBuilder: (context, index) => buildCard(),
    //               );
    //               // return Container();
    //             })),
    //         Positioned(
    //           bottom: 50,
    //           right: 50,
    //           child: IconButton.filled(
    //             onPressed: () {},
    //             icon: const Icon(Icons.add),
    //             iconSize: 30,
    //           ),
    //         )
    //       ],
    //     ),
    //   ],
    // ));

    return LayoutBuilder(
      builder: (context, constraints) {
        int columns = (constraints.maxWidth >= 1200)
            ? 3
            : (constraints.maxWidth >= 800)
                ? 2
                : 1;

        double cardWidth = constraints.maxWidth / columns - 16;

        return GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: cardWidth / 200),
            itemBuilder: (context, index) => buildCard(context, index));
      },
    );
  }

  Widget buildCard(context, index) {
    return Card(
      child: Column(
        children: [
          Text(
            "${index}",
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
// TODO: example
// return Column(
//       children: [
//         TextField(
//           controller: bellController.nameTEC,
//           decoration: const InputDecoration(
//               // hintText: "Name",
//               labelText: "Name",
//               isDense: true,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(8)),
//               )),
//         ),
//         const SizedBox(
//           height: 8.0,
//         ),
//         TextField(
//           controller: bellController.addressTEC,
//           decoration: const InputDecoration(
//               // hintText: "Name",
//               labelText: "Address",
//               isDense: true,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(8)),
//               )),
//         ),
//         ElevatedButton(
//             onPressed: () {
//               bellController.addEmployee(
//                   bellController.nameTEC.text, bellController.addressTEC.text);
//             },
//             child: const Row(
//               children: [Icon(Icons.add), Text("Add")],
//             )),
//         Expanded(
//             child: Obx(() => ListView.builder(
//                   itemCount: bellController.itemCount.value,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: ListTile(
//                         title: Text(bellController.empData.value[index].name),
//                         subtitle:
//                             Text(bellController.empData.value[index].address),
//                         trailing: IconButton(
//                           icon: const Icon(Icons.delete),
//                           onPressed: () {
//                             bellController.removeEmployee(index);
//                           },
//                         ),
//                       ),
//                     );
//                   },
//                 )))
//       ],
//     );