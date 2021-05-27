import 'package:flutter/material.dart';
import 'package:freshbuyings/components/freshCard.dart';

class CheckOutBody extends StatefulWidget {
  @override
  _CheckOutBodyState createState() => _CheckOutBodyState();
}

class _CheckOutBodyState extends State<CheckOutBody> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF21BFBD).withOpacity(1),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.backspace),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF21BFBD).withOpacity(1),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: mq.size.width,
                decoration: BoxDecoration(
                  color: Color(0xFF21BFBD).withOpacity(1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Text(
                    "TOTAL:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: mq.size.width * 0.3,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF21BFBD).withOpacity(1),
                ),
                child: Text(
                  "\u20B9$sum",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: mq.size.width * 0.3,
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.10,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
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
                      Navigator.pushNamed(context, '/something new');
                    },
                    child: Text(
                      'Place Order',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
