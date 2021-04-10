import 'package:d5_pizza/s.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Pepperonie Pizza'),
        backgroundColor: Colors.white,
        trailing: Image.asset(
          'assets/images/pizza_icon.png',
          width: 24,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/new_pizza.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(bottom: 100, child: MyWidget()),
          Positioned(bottom: 0, child: MyWidget()),
          Positioned(
            left: 0,
            right: 0,
            bottom: 80,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}
