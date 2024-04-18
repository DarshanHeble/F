import 'package:app/models/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.notifications, title: "Bells"),
    MenuModel(icon: Icons.campaign, title: "Announcements"),
    MenuModel(icon: Icons.settings, title: "Settings"),
  ];
}
