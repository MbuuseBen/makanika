import 'package:book/components/already_have_an_account_check.dart';
import 'package:book/components/rounded_button.dart';
import 'package:book/components/rounded_password_field.dart';
import 'package:book/constants.dart';
import 'package:book/screens/Account/account_settings.dart';
import 'package:book/screens/EditSettings/edit_settings.dart';
import 'package:book/screens/Login/components/background.dart';
import 'package:book/components/rounded_input_field.dart';
import 'package:book/components/text_field_container.dart';
import 'package:book/screens/Shop/shop_page.dart';
import 'package:book/screens/otp/otp_screen.dart';
import 'package:book/screens/signup/components/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "REGISTER / LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
            ),
            SizedBox(height: size.height * 0.23),
            Image.network(
              "https://i.dlpng.com/static/png/6317159_preview.png",
              height: 250,
            ),
            SizedBox(height: size.height * 0.03),

            Text(
              "Enter Your Phone Number",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RoundedInputField(
              hintText: "Phone Number",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "CONTINUE",
              press:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          return ShopPage();
                        }
                    )
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}