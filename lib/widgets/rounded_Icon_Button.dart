import 'package:flutter/material.dart';

Widget roundedIconButton(
    IconData icon, Color iconColor, Color backgroundColor) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: backgroundColor,
    ),
    child: IconButton(
      onPressed: () {},
      icon: Icon(icon, color: iconColor),
      iconSize: 35,
    ),
  );
}
