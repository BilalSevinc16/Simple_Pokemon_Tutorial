import 'package:flutter/material.dart';

class ProfOak extends StatelessWidget {
  final double x;
  final double y;
  final String location;
  final String oakDirection;

  const ProfOak({
    Key? key,
    required this.x,
    required this.y,
    required this.location,
    required this.oakDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (location == "littleroot") {
      return Container(
        alignment: Alignment(x, y),
        child: Image.asset(
          "images/profoak$oakDirection.png",
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
