import 'package:flutter/material.dart';
import 'package:freshbuyings/MainPage.dart';

import 'package:freshbuyings/checkoutScreen.dart';
import 'package:freshbuyings/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreshBuyings',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/second': (context) => MainPage(),
        '/third': (context) => CheckOutScreen(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
