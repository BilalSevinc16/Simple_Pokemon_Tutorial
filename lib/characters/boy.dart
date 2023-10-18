import 'package:flutter/material.dart';

class MyBoy extends StatelessWidget {
  final int boySpriteCount; // 0 for standing, 1-2 for walking
  final String direction;
  final String location;
  double height = 40;

  MyBoy({
    Key? key,
    required this.boySpriteCount,
    required this.direction,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (location == "littleroot") {
      height = 40;
    } else if (location == "pokelab") {
      height = 50;
    } else if (location == "battleground" ||
        location == "attackoptions" ||
        location == "battlefinishedscreen") {
      height = 0;
    }
    return SizedBox(
      height: height,
      child: Image.asset(
        "images/boy$direction$boySpriteCount.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
