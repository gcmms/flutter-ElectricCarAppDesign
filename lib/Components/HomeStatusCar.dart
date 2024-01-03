import 'package:flutter/material.dart';

class HomeStatusCar extends StatelessWidget {
  final IconData iconData;
  final String statusText;

  HomeStatusCar({
    required this.iconData,
    required this.statusText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData, color: Colors.white),
        Text(statusText, style: TextStyle(color: Colors.grey))
      ],
    );
  }
}
