import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showStats = false;
  bool isFavourite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7FAFB),
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 128),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32),
                              ),
                              color: Color(0xFF585D8B),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 80,
                                  height: 96,
                                  decoration: BoxDecoration(
                                    gradient: isFavourite
                                        ? LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xFFFFCFD8),
                                              Color(0xFFFFB0BE),
                                            ],
                                          )
                                        : null,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(32),
                                      bottomLeft: Radius.circular(24),
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isFavourite = !isFavourite;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 32),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '141k',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 32),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.cloud_download,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '65k',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 32),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 112),
                    ],
                  ),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 500),
                    width: MediaQuery.of(context).size.width,
                    right: showStats ? 80 : 0,
                    bottom: 80,
                    top: 0,
                    curve: Curves.easeInOutSine,
                    child: Container(
                      color: Color(0xFF585D8B),
                      child: ClipPath(
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2017/12/23/17/54/white-background-3035664_960_720.jpg',
                          fit: BoxFit.cover,
                        ),
                        clipper: BottomWaveClipper(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 32,
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(32),
                          topLeft: Radius.circular(32),
                        ),
                        color: Color(0xFF585D8B),
                      ),
                      child: TabBar(
                        indicator:
                            UnderlineTabIndicator(borderSide: BorderSide.none),
                        tabs: <Widget>[
                          Text('Description'),
                          Text('Testimonials'),
                          Text('Privacy'),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFF585D8B),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                        ),
                        color: Color(0xFFF7FAFB),
                      ),
                    ),
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF535988),
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showStats = !showStats;
                            });
                          },
                          borderRadius: BorderRadius.circular(32),
                          child: Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: FourBulletsButton(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Suzanne Saroff",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xFF002140),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "I was born and raised in Missoula, Montana.",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF535887),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "I seek to find new ways of interpreting our reality.",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF535887),
                      ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Similar Themes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF002140),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16, right: 32),
                child: Row(
                  children: <Widget>[
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: ThemeCard(),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}

class ThemeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://cdn.dribbble.com/users/2313212/screenshots/7706321/image.png',
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Text(
            'The Nue Corel',
            style: TextStyle(
              color: Color(0xFF535988),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Spacer(),
          TwoBulletsButton(),
        ],
      ),
    );
  }
}

class TwoBulletsButton extends StatelessWidget {
  final EdgeInsets margin;

  const TwoBulletsButton({Key key, this.margin = const EdgeInsets.all(16)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: Color(0xFF535988),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: Color(0xFF535988),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }
}

class FourBulletsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          TwoBulletsButton(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
          ),
          TwoBulletsButton(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      margin: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFFDCB2),
            Color(0xFFFFCF92),
          ],
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(
            "Download Catalog",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width / 2, size.height - 32);
    path.lineTo(size.width - 32, size.height - 32);
    var firstControlPoint = Offset(size.width, size.height - 32);

    var firstEndPoint = Offset(size.width - 32, size.height - 32);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 64);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
