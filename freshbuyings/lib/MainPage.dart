import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:freshbuyings/components/freshCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/titleCard.dart';

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
              height: size.height * 0.15,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xFF21BFBD).withOpacity(1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(50.0, 50.0),
                  bottomRight: Radius.elliptical(50.0, 50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        icon: Icon(Icons.add_location_alt), onPressed: () {}),
                    TitleName(
                      firstHeadTextSize: 40,
                      secondHeadTextSize: 35,
                    ),
                    IconButton(
                        icon: Icon(Icons.shopping_cart_outlined),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: (entries.length),
                  itemBuilder: (BuildContext context, int index) {
                    return Freshcard(
                        size: size,
                        itemName: '${entries[index]}',
                        itemQuantity: qty[index],
                        itemPrice: prices[index]);
                  },
                ),
              ),
            ),
            Container(
              height: size.height * 0.10,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xFF21BFBD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(100, 100),
                  topRight: Radius.elliptical(100, 100),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                    child: Text(
                      'Checkout',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
