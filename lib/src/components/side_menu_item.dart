import 'package:flutter/material.dart';

import '../models/menu_item.dart';
import '../constants.dart';

class SideMenuItem extends StatefulWidget {
  final MenuItem item;

  const SideMenuItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<SideMenuItem> createState() => _SideMenuItemState();
}

class _SideMenuItemState extends State<SideMenuItem> {
  Color _bgColor = Colors.transparent;
  Color _iconColor = Colors.black;

  Color get bgColor => widget.item.bgColor ?? _bgColor;
  bool get isFirstMenu => widget.item.name == 'Pomodoro Timer';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (e) {
          setState(() {
            _bgColor = primaryColor;
            _iconColor = Colors.white;
          });
        },
        onExit: (e) {
          setState(() {
            _bgColor = Colors.transparent;
            _iconColor = Colors.black;
          });
        },
        child: Container(
          padding: const EdgeInsets.only(left: 8.0),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            leading: Icon(
              widget.item.icon,
              color: isFirstMenu ? Colors.white : _iconColor,
            ),
            title: Text(
              widget.item.name,
              style: TextStyle(color: isFirstMenu ? Colors.white : _iconColor),
            ),
            contentPadding: EdgeInsets.zero,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
