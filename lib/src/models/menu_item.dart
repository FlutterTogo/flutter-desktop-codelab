import 'package:flutter/material.dart';

import '../constants.dart';

class MenuItem {
  final String name;
  final IconData icon;
  final Color? bgColor;

  MenuItem(this.name, this.icon, {this.bgColor});
}

final List<MenuItem> menuItems = [
  MenuItem('Pomodoro Timer', Icons.schedule, bgColor: primaryColor),
  MenuItem('To Do List', Icons.list),
  MenuItem('Scheduler', Icons.calendar_today_outlined),
  MenuItem('Settings', Icons.settings_outlined),
  MenuItem('Logout', Icons.logout_outlined),
];
