import 'dart:ui';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.20,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xFF21BFBD),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(100.0, 100.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 80.0,
                    ),
                    Freshcard(
                      size: size,
                      color: Color(0xFF21BFBD).withOpacity(0.2),
                    ),
                    Freshcard(
                      size: size,
                      color: Color(0xFF21BFBD).withOpacity(0.2),
                    ),
                    Freshcard(
                      size: size,
                      color: Color(0xFF21BFBD).withOpacity(0.2),
                    ),
                    Freshcard(
                      size: size,
                      color: Color(0xFF21BFBD).withOpacity(0.2),
                    ),
                    Freshcard(
                      size: size,
                      color: Color(0xFF21BFBD).withOpacity(0.2),
                    ),
                    Freshcard(
                      size: size,
                      color: Color(0xFF21BFBD).withOpacity(0.2),
                    ),
                    Freshcard(
                      size: size,
                      color: Color(0xFF21BFBD).withOpacity(0.2),
                    ),
                    Freshcard(
                      size: size,
                      color: Color(0xFF21BFBD).withOpacity(0.2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Freshcard extends StatelessWidget {
  const Freshcard({
    Key key,
    @required this.size,
    this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 16,
          sigmaY: 16,
        ),
        child: Container(
          height: size.height * 0.10,
          width: size.width,
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              width: 1.5,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
