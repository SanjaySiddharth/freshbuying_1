import 'package:flutter/material.dart';
import 'CardFB.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.account_circle_outlined,
                        size: 40.0,
                      ),
                      onPressed: () {
                        setState(() {
                          print('Hello Peeps');
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardFB(
                    size: size,
                    color: Colors.yellow,
                    vegetableName: 'Carrots',
                    price: 25,
                  ),
                  CardFB(
                    size: size,
                    color: Colors.green,
                    vegetableName: 'Beetroot',
                    price: 106,
                  ),
                  CardFB(
                    size: size,
                    color: Colors.lightGreen,
                    vegetableName: 'Bananas',
                    price: 52,
                  ),
                  CardFB(
                    size: size,
                    color: Colors.greenAccent,
                    vegetableName: 'Oranges',
                    price: 95,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.20,
              width: size.width,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
