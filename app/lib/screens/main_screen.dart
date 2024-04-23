import 'package:app/controller/side_bar_controller.dart';
import 'package:app/widgets/side_menu_widget1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());

    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              width: 50,
              child: SideMenuWidget1(),
            ),
          ),
          Expanded(
            flex: 10,
            child: Obx(
                () => sideBarController.pages[sideBarController.index.value]),
            // child: RightWindow(),
          ),
        ],
      )),
    );
  }
}
