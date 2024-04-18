import 'package:app/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox(
              child: SideMenuWidget(),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(color: Colors.blue),
          ),
        ],
      )),
    );
  }
}
