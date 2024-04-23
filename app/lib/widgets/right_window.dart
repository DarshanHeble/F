import 'package:app/controller/side_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RightWindow extends StatefulWidget {
  const RightWindow({super.key});

  @override
  State<RightWindow> createState() => _RightWindowState();
}

class _RightWindowState extends State<RightWindow> {
  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());
    int selectedValue = 0;

    return Row(children: [
      Expanded(
        child: Column(
          children: [
            // Container 1
            Visibility(
              visible: sideBarController.index.value == 0,
              child: Container(
                color: Colors.red,
                height: 100,
                child: const Text('Container 1'),
              ),
            ),
            // Container 2
            Visibility(
              visible: selectedValue == 1,
              child: Container(
                color: Colors.green,
                height: 500,
                child: const Text('Container 2'),
              ),
            ),
            // Container 3
            Visibility(
              visible: selectedValue == 2,
              child: Container(
                color: Colors.blue,
                height: 100,
                child: const Text('Container 3'),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
