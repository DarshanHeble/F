import 'package:app/controller/bell_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // BellController bellController = Get.put(BellController());

    // return LayoutBuilder(
    //   builder: (context, constraints) {
    //     int columns = (constraints.maxWidth >= 1200)
    //         ? 3
    //         : (constraints.maxWidth >= 800)
    //             ? 2
    //             : 1;

    //     double cardWidth = constraints.maxWidth / columns - 16;
    //     BellController bellController = Get.put(BellController());

    //     return GridView.builder(
    //         itemCount: bellController.itemCount.value,
    //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: columns,
    //             mainAxisSpacing: 20,
    //             crossAxisSpacing: 20,
    //             childAspectRatio: cardWidth / 200),
    //         itemBuilder: (context, index) => buildCard(context, index));
    //   },
    // );
    BellController bellController = Get.put(BellController());
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        color: const Color.fromARGB(255, 236, 153, 153),
        child: Row(
          children: [
            Container(
              color: const Color.fromARGB(255, 23, 23, 23),
              width: 150.0,
              child: buildSideMenu(bellController),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  int columns = (constraints.maxWidth >= 1200)
                      ? 3
                      : (constraints.maxWidth >= 800)
                          ? 2
                          : 1;

                  double cardWidth = constraints.maxWidth / columns - 16;
                  BellController bellController = Get.put(BellController());

                  return GridView.builder(
                      itemCount: bellController.itemCount.value,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: columns,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: cardWidth / 200),
                      itemBuilder: (context, index) =>
                          buildCard(context, index));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSideMenu(bellController) {
    BellController bellController = Get.put(BellController());

    return ListView.builder(
      itemCount: bellController.itemCount.value,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(bellController.bellData.value[index].tabname),
          leading: const Icon(Icons.alarm),
          onTap: () {},
        );
      },
    );
  }

  Widget buildCard(context, index) {
    BellController bellController = Get.put(BellController());

    return Card(
      child: Column(
        children: [
          Text(
            bellController.bellData.value[index].timeData[0].time,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text("Hello"),
          Text("Bell.mp3"),
          const Row(
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