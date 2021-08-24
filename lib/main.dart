import 'package:book/constants.dart';
import 'package:book/screens/Confirmation/Confirmation.dart';
import 'package:book/screens/Invoice/Invoice.dart';
import 'package:book/screens/Payment/PaymentMethod.dart';
import 'package:book/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Auth',
//       theme: ThemeData(
//         primaryColor: kPrimaryColor,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: Confirmation(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController controller=PageController();
  List<Widget> _list=<Widget>[
    new Center(child:new Invoice()),
    new Center(child:new Payment()),
    new Center(child:new Confirmation()),
  ];

  int _curr=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: PageView(
          children:
          _list,
          scrollDirection: Axis.horizontal,
          pageSnapping: true,
          physics: BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: (num){
            print("Current page number is "+num.toString());
            _curr=num;
          },
        ),

    );
  }
}