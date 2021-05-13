import 'package:flutter/material.dart';
import 'package:freshbuyings/components/splashbody.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD).withOpacity(0.9),
      body: SplashBody(),
    );
  }
}
