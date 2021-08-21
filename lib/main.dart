import 'package:book/constants.dart';
import 'package:book/screens/Confirmation/Confirmation.dart';
import 'package:book/screens/Invoice/Invoice.dart';
import 'package:book/screens/Payment/PaymentMethod.dart';
import 'package:book/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Confirmation(),
    );
  }
}

