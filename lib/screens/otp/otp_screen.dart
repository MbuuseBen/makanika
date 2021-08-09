import 'package:book/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class OtpScreen extends StatelessWidget{
  get phoneNumber => null;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "REGISTER / LOGIN 📱",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              "https://media.istockphoto.com/photos/red-generic-coupe-car-isolated-on-white-background-3d-illustration-picture-id1191094307?k=6&m=1191094307&s=612x612&w=0&h=0WcHhoAzzqlrzR_TlfE9t9RVJEIwvonMcG-ysLpt-ok=",
              height: 150,
            ),
            SizedBox(height: 50,),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.10,
            // ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30),
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.phone_iphone,
                      color: kPrimaryColor,
                    ),
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Enter Your Phone Number...",
                    fillColor: Colors.white70),
                onChanged: (value) {

                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RoundedButton(
                text: "Generate OTP",
                press: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return new AlertDialog(
                          title: Text('Enter your OTP'),
                          content: Padding(
                            padding: EdgeInsets.symmetric( horizontal:10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(30),
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                //  otp = value;
                              },
                            ),
                          ),
                          contentPadding: EdgeInsets.all(5.0),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                //  signIn(otp);
                              },
                              child: Text(
                                'Submit',
                              ),
                            ),
                          ],
                        );
                      });
                }

            ),
            SizedBox(
              height: 20,
            ),
            Text("Need Help?"),
            SizedBox(
              height: 20,
            ),

            Text(
              "Please enter country code followed by the phone number",
              style: TextStyle(color: kPrimaryColor),
            ),
            SizedBox(
              height: 20,
            ),
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


  verifyPhoneNumber(BuildContext context) {}
}
