import 'package:book/constants.dart';
import 'package:book/screens/Confirmation/Confirmation.dart';
import 'package:book/screens/Home/Home.dart';
import 'package:book/screens/Invoice/Invoice.dart';
import 'package:book/screens/Payment/PaymentMethod.dart';
import 'package:book/screens/Programme.dart';
import 'package:book/screens/welcome_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//class MyApp extends StatelessWidget {
 // List<String> events =["Mbuuse","Ben","George","Paul"];
  // This widget is the root of your application.

  // MyApp.count(
  //     {required Key key,
  //       Axis scrollDirection: Axis.vertical,
  //       bool reverse: false,
  //       required ScrollController controller,
  //       required bool primary,
  //       required ScrollPhysics physics,
  //       bool shrinkWrap: false,
  //       required EdgeInsetsGeometry padding,
  //       required int crossAxisCount,
  //       double mainAxisSpacing: 0.0,
  //       double crossAxisSpacing: 0.0,
  //       double childAspectRatio: 1.0,
  //       bool addAutomaticKeepAlives: true,
  //       bool addRepaintBoundaries: true,
  //       bool addSemanticIndexes: true,
  //       required double cacheExtent,
  //       List<Widget> children: const <Widget>[],
  //       required int semanticChildCount,
  //       DragStartBehavior dragStartBehavior: DragStartBehavior.start,
  //       ScrollViewKeyboardDismissBehavior keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
  //       required String restorationId,
  //       Clip clipBehavior: Clip.hardEdge}
  //     )
  // GridView(
  //     {required Key key,
  //       Axis scrollDirection: Axis.vertical,
  //       bool reverse: false,
  //       required ScrollController controller,
  //       required bool primary,
  //       required ScrollPhysics physics,
  //       bool shrinkWrap: false,
  //       required EdgeInsetsGeometry padding,
  //       required SliverGridDelegate gridDelegate,
  //       bool addAutomaticKeepAlives: true,
  //       bool addRepaintBoundaries: true,
  //       bool addSemanticIndexes: true,
  //       required double cacheExtent,
  //       List<Widget> children: const <Widget>[],
  //       required int semanticChildCount,
  //       DragStartBehavior dragStartBehavior: DragStartBehavior.start,
  //       Clip clipBehavior: Clip.hardEdge,
  //       ScrollViewKeyboardDismissBehavior keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
  //       required String restorationId}
  //     )

  // GridView(
  //     {Key key,
  //       Axis scrollDirection: Axis.vertical,
  //       bool reverse: false,
  //       ScrollController controller,
  //       bool primary,
  //       ScrollPhysics physics,
  //       bool shrinkWrap: false,
  //       EdgeInsetsGeometry padding,
  //       @required SliverGridDelegate gridDelegate,
  //       @required IndexedWidgetBuilder itemBuilder,
  //       int itemCount,
  //       bool addAutomaticKeepAlives: true,
  //       bool addRepaintBoundaries: true,
  //       bool addSemanticIndexes: true,
  //       double cacheExtent,
  //       int semanticChildCount,
  //       DragStartBehavior dragStartBehavior: DragStartBehavior.start,
  //       ScrollViewKeyboardDismissBehavior keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
  //       String restorationId,
  //       Clip clipBehavior: Clip.hardEdge}
  //     )
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       home: Scaffold(
//         // backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.blueGrey[900],
//           title: Center(
//             child: Text(
//               'Flutter GridView',
//               style: TextStyle(
//                 color: Colors.blueAccent,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30.0,
//               ),
//             ),
//           ),
//         ),
//         body: Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/main_top.png"),
//                     fit: BoxFit.cover,
//                   ),
//                   // borderRadius:
//                   // BorderRadius.all(Radius.circular(20.0),),
//                   child:Container(
//                     margin: const EdgeInsets.only(top: 120.0),
//                     child: GridView(
//                       physics: BouncingScrollPhysics(),
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//                       children: events.map((title){
//                         return GestureDetector(onTap: (){},);
//                     }).toList(),
//
//                     ),
//
//                   )
//                 ),
//               ),
//             ),
//
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
    new Center(child:new Programme()),
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