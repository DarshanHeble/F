import 'package:app/controller/side_bar_controller.dart';
import 'package:app/data/side_menu_data.dart';
import 'package:flutter/material.dart';
import 'package:app/const/constant.dart';
import 'package:get/get.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  final data = SideMenuData();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: ListView.builder(
    //     itemCount: data.menu.length,
    //     itemBuilder: (context, index) => buildMenuEntry(data, index),
    //   ),
    // );
    SideBarController sideBarController = Get.put(SideBarController());
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Obx(() => ListView(
                    children: [
                      ListTile(
                        title: const Text(
                          "Home",
                          // style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.home,
                          // color: Colors.white,
                        ),
                        onTap: () => sideBarController.index.value = 0,
                        selected: sideBarController.index.value == 0,
                        // selectedColor: Colors.amberAccent,
                      ),
                      ListTile(
                        title: const Text(
                          "About",
                          // style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.person,
                          // color: Colors.white,
                        ),
                        onTap: () => sideBarController.index.value = 1,
                        selected: sideBarController.index.value == 1,
                        // selectedColor: Colors.amberAccent,
                      ),
                      ListTile(
                        title: const Text(
                          "setting",
                          style: TextStyle(
                              // color: Colors.white,
                              ),
                        ),
                        leading: const Icon(
                          Icons.settings,
                          // color: Colors.white,
                        ),
                        onTap: () => sideBarController.index.value = 2,
                        selected: sideBarController.index.value == 2,
                        // selectedColor: Colors.amberAccent,
                      ),
                    ],
                  )))
        ],
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    SideBarController sideBarController = Get.put(SideBarController());
    final bool isSelected = selectedIndex == index;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          color: isSelected ? selectionColor : Colors.black),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
          sideBarController.index.value = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
