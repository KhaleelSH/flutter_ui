import 'package:d3_select/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> titles = [
    'Camp',
    'Fishing',
    'Packing',
    'Forest',
    'Transport',
    'Rafting',
    'Radio',
    'Tea',
    'Telescope',
  ];
  final List<IconData> icons = [
    FontAwesomeIcons.campground,
    FontAwesomeIcons.fish,
    FontAwesomeIcons.wolfPackBattalion,
    FontAwesomeIcons.tree,
    FontAwesomeIcons.car,
    FontAwesomeIcons.ship,
    FontAwesomeIcons.satellite,
    FontAwesomeIcons.coffee,
    FontAwesomeIcons.moon,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Add Itinerary',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Choose thpe of activity that will you\nadd in your camp schedule',
              style: TextStyle(
                color: Colors.grey,
                height: 1.3,
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 32,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.8,
                ),
                padding: const EdgeInsets.only(left: 8),
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Item(
                    icon: icons[index],
                    title: titles[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFff764b),
        child: CupertinoButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text('Itinerary Activites'),
                    content: Text('Thanks for choosing us!'),
                    actions: <Widget>[
                      CupertinoButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'CONTINUE',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
