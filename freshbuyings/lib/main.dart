import 'package:flutter/material.dart';
import 'MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreshBuyings',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
