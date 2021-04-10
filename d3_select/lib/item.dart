import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String title;
  final IconData icon;

  const Item({
    Key key,
    this.title,
    this.icon,
  }) : super(key: key);
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _selected = !_selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: _selected ? Color(0xFF412e8b) : Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color(0x11412e8b),
                      blurRadius: 6,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Icon(
                    widget.icon,
                    size: 40,
                    color: _selected ? Colors.white : Color(0xFF412e8b),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              widget.title,
              style: TextStyle(
                color: _selected ? Color(0xFF412e8b) : Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        if (_selected)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFff764b),
                borderRadius: BorderRadius.circular(32),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
