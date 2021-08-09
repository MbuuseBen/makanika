import 'package:book/components/already_have_an_account_check.dart';
import 'package:book/components/rounded_button.dart';
import 'package:book/components/rounded_input_field.dart';
import 'package:book/components/rounded_password_field.dart';
import 'package:book/screens/Login/login_screen.dart';
import 'package:book/screens/signup/components/background.dart';
import 'package:book/screens/signup/components/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.23),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              hintText: "Phone Number",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              hintText: 'Password',
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(height: size.height * 0.03),
            Text(
              "Proceed",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),


          ],
        ),
      ),
    );
  }
}
