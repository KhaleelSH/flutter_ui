import 'dart:math';

import 'package:flutter/cupertino.dart';

class RadialPosition extends StatelessWidget {
  final double radius;
  final double angle;
  final Widget child;

  const RadialPosition({Key key, this.radius, this.angle, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final x = sin(angle) * radius;
    final y = -cos(angle) * radius;
    return Transform(
      transform: Matrix4.translationValues(x, y, 0),
      child: child,
    );
  }
}
