import 'package:flutter/material.dart';
import 'package:d2_learning/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFAF2E8),
      ),
      home: HomePage(),
    );
  }
}
