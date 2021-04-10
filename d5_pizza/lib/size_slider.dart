import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeSlider extends StatefulWidget {
  @override
  _SizeSliderState createState() => _SizeSliderState();
}

class _SizeSliderState extends State<SizeSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 8, offset: Offset(0, -8)),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('S'),
              Text('M'),
              Text('L'),
            ],
          ),
        ),
      ],
    );
  }
}
