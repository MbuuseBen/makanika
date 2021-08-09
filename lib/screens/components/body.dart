// import 'dart:ui';
//
// import 'package:book/components/rounded_button.dart';
// import 'package:book/constants.dart';
// import 'package:book/screens/Account/account_settings.dart';
// import 'package:book/screens/EditSettings/components/body.dart';
// import 'package:book/screens/EditSettings/edit_settings.dart';
// import 'package:book/screens/Login/login_screen.dart';
// import 'package:book/screens/Shop/shop_page.dart';
// import 'package:book/screens/otp/otp_screen.dart';
// import 'package:book/screens/signup/components/signup_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// import 'background.dart';
//
// class Body extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
//    return Background(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//
//          SizedBox(height: size.height *0.25),
//
//              Text(
//                "MAKANIKA APP",
//                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),
//              ),
//          // SvgPicture.asset("assets/icons/chat.svg",
//          // height: size.height *0.4,
//          // ),
//              //SizedBox(height: size.height *0.35),
//
//
//          SizedBox(height: size.height *0.32),
//          RoundedButton(
//            text: "CONTINUE WITH MOBILE NUMBER",
//            press: (){Navigator.push(context,
//              MaterialPageRoute(
//                builder: (context){
//                  return EditSettings();
//                  },
//              ),
//            );
//            },
//          ),
//          // RoundedButton(
//          //   text: "REGISTER",
//          //   color: kPrimarylightColor,
//          //   textColor: Colors.black,
//          //   press: (){
//          //     Navigator.push(context,
//          //         MaterialPageRoute(
//          //             builder: (context){
//          //               return SignUpScreen();
//          //
//          //             },
//          //         ),
//          //     );
//          //   },
//          // )
//      ],
//
//        ),
//    );
//   }
//
// }
//
