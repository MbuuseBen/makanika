import 'package:book/screens/Cart/Cart.dart';
import 'package:book/screens/ProductDetails/product_details.dart';
import 'package:book/screens/Shop/shop_page.dart';
import 'package:flutter/material.dart';

import 'Login/login_screen.dart';


 class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Cart(), );
  }

 }