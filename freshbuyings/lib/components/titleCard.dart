import 'package:flutter/material.dart';

class TitleName extends StatelessWidget {
  const TitleName({
    @required this.firstHeadTextSize,
    @required this.secondHeadTextSize,
    Key key,
  }) : super(key: key);
  final double firstHeadTextSize;
  final double secondHeadTextSize;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Fresh',
            style: TextStyle(
              fontSize: firstHeadTextSize,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: 'Buyings',
            style: TextStyle(
              fontSize: secondHeadTextSize,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
