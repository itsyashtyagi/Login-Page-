import 'package:flutter/material.dart';
import 'package:signin_signup/login.dart';
import 'package:signin_signup/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister()
    },
  ));
}
