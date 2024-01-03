import 'package:flutter/material.dart';

class StatusButtom extends StatelessWidget {
  final String firstLine;
  final String secondLine;

  StatusButtom({
    required this.firstLine,
    required this.secondLine,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.firstLine,
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          this.secondLine,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        )
      ],
    );
  }
}