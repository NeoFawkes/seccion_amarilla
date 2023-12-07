import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption{
  final String route;
  final IconData iconData;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route,
    required this.iconData,
    required this.name,
    required this.screen
  });
}