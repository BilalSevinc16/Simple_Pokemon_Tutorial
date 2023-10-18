import 'package:flutter/material.dart';

class LittleRoot extends StatelessWidget {
  final double x;
  final double y;
  final String currentMap;

  const LittleRoot({
    Key? key,
    required this.x,
    required this.y,
    required this.currentMap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (currentMap == "littleroot") {
      return Container(
        alignment: Alignment(x, y),
        child: Image.asset(
          "images/littleroot.png",
          width: MediaQuery.of(context).size.width *
              0.75, // currently works with 0.75
          fit: BoxFit.cover,
        ),
      );
    } else {
      return Container();
    }
  }
}
