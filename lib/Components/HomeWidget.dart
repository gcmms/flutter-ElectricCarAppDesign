import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final String image;
  final String firstLine;
  final String secondLine;
  final String footerLine;

  HomeWidget({
    required this.image,
    required this.firstLine,
    required this.secondLine,
    required this.footerLine
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
      child: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [Colors.grey, Colors.black]
            ),
            borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 60,
                height: 60,
                child: Image.asset(image),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(firstLine, style: TextStyle(color: Colors.white)),
                  Text(secondLine, style: TextStyle(color: Colors.white)),
                  Text(footerLine, style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.chevron_right, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
