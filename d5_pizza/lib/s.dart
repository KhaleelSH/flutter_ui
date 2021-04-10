import 'package:d5_pizza/radial_list.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: CustomPaint(
        painter: BasePainter(baseColor: Colors.red),
        child: Transform.scale(
          scale: 1.5,
          origin: Offset(0, -300),
          child: Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(123123),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                  ),
                ]),
            child: RadialList(),
          ),
        ),
      ),
    );
  }
}

class BasePainter extends CustomPainter {
  Color baseColor;

  Offset center;
  double radius;
  final Paint myPaint;
  BasePainter({@required this.baseColor}) : myPaint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    myPaint
      ..color = baseColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    center = Offset(size.width / 2, size.height / 2 + 150);
    radius = size.width / 2 * 1.5;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), 10.84, 0.3,
        false, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
