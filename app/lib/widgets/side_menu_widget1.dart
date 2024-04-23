import 'package:app/controller/side_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenuWidget1 extends StatelessWidget {
  const SideMenuWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());

    // final data = sideBarController.sideMenuData;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Obx(() => ListView(
                    children: [
                      ListTile(
                        title: Text(
                          "Home",
                          style: TextStyle(
                              color: sideBarController.index.value == 1
                                  ? Colors.white
                                  : Colors.grey),
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
}

Widget createMenu(SideBarController sideBarController, int index) {
  {
    return ListTile(
      title: Text(
        sideBarController.sideMenuData[index].title,
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(sideBarController.sideMenuData[index].icon),
      onTap: () {
        sideBarController.index.value = index;
      },
      selected: sideBarController.index.value == index,
      selectedColor: Colors.blue,
    );
  }
}
