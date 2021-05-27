import 'package:flutter/material.dart';
import 'package:freshbuyings/loginBody.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD).withOpacity(0.9),
      body: LoginBody(),
    );
  }
}
