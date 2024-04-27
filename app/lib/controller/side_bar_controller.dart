import 'package:app/data/side_menu_data.dart';
import 'package:app/screens/announce_screen.dart';
import 'package:app/screens/bell_screen.dart';
import 'package:app/screens/setting_screen.dart';
import 'package:get/get.dart';

class SideBarController extends GetxController {
  RxInt index = 0.obs;

  // final menu = const <MenuModel>[
  //   MenuModel(icon: Icons.notifications, title: "Bells"),
  //   MenuModel(icon: Icons.campaign, title: "Announcements"),
  //   MenuModel(icon: Icons.settings, title: "Settings"),
  // ];

  final sideMenuData = SideMenuData().menu.obs;

  var pages = const [
    BellScreen(),
    AnnounceScreen(),
    SettingScreen(),
  ];
}
