// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
//
// import '../Programme.dart';
//
// class Home extends StatelessWidget {
//   const Home.custom(
//       {Key key,
//         Axis scrollDirection: Axis.vertical,
//         bool reverse: false,
//         ScrollController controller,
//         bool primary,
//         ScrollPhysics physics,
//         bool shrinkWrap: false,
//         EdgeInsetsGeometry padding,
//         @required SliverGridDelegate gridDelegate,
//         @required SliverChildDelegate childrenDelegate,
//         double cacheExtent,
//         int semanticChildCount,
//         DragStartBehavior dragStartBehavior: DragStartBehavior.start,
//         ScrollViewKeyboardDismissBehavior keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
//         String restorationId,
//         Clip clipBehavior: Clip.hardEdge}
//       )
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.blueGrey[900],
//           title: Center(
//             child: Text(
//               'Flutter GridView Demo',
//               style: TextStyle(
//                 color: Colors.blueAccent,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30.0,
//               ),
//             ),
//           ),
//         ),
//         body: GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10.0,
//           mainAxisSpacing: 10.0,
//           shrinkWrap: true,
//           children: List.generate(20, (index) {
//             return Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: NetworkImage('img.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius:
//                   BorderRadius.all(Radius.circular(20.0),),
//                 ),
//               ),
//             );
//           },),
//         ),
//       ),
//     );
//   }
// }