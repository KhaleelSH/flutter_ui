import 'dart:math';

import 'package:d5_pizza/radial_position.dart';
import 'package:flutter/material.dart';

class RadialList extends StatefulWidget {
  @override
  _RadialListState createState() => _RadialListState();
}

class _RadialListState extends State<RadialList> {
  List<String> list = ['S', 'M', 'L'];

  double start = 0;
  List<Widget> _radialMenuItems() {
    final double firstItemAngle = -pi / 6;
    final double lastItemAngle = pi / 6;
    final double angleDiffPerItem =
        (lastItemAngle - firstItemAngle) / (list.length - 1);
    double currAngle = firstItemAngle + start;

    return list.map((String value) {
      final listItem = _radialListItem(value, currAngle);
      currAngle += angleDiffPerItem;
      return listItem;
    }).toList();
  }

  Widget _radialListItem(String value, double angle) {
    return Transform.translate(
      offset: Offset(MediaQuery.of(context).size.width / 2, 220),
      child: RadialPosition(
        radius: MediaQuery.of(context).size.width / 2,
        angle: angle,
        child: Transform.rotate(
          angle: angle,
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (value) {
        print(value.globalPosition);
        setState(() {
          start += value.delta.dx / (MediaQuery.of(context).size.width);
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(123123),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ]),
        child: Stack(
          children: [
            ..._radialMenuItems(),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
