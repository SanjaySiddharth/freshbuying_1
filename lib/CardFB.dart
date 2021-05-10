import 'package:flutter/material.dart';

class CardFB extends StatelessWidget {
  const CardFB({
    Key key,
    @required this.size,
    @required this.color,
    this.cardChild,
    this.vegetableName,
    this.price,
  }) : super(key: key);

  final Size size;
  final Color color;
  final Widget cardChild;
  final String vegetableName;
  final num price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.60,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              offset: const Offset(3.0, 3.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,
              color: color,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          Text(
            vegetableName,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              '\u20B9 $price per KG',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
