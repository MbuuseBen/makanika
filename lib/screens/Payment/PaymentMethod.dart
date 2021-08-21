import 'package:book/components/rounded_button.dart';
import 'package:book/components/rounded_input_field.dart';
import 'package:book/screens/Shop/shop_page.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Payment Method'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 6 ),
            // Image.network(
            //   "https://i.dlpng.com/static/png/6317159_preview.png",
            //   height: 150,
            // ),
            SizedBox(height: 6),
            Text(
              "CHOOSE PAYMENT METHOD",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),

            Container(
              width: 400,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 5,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      SizedBox(width: 5.0),
                      Icon(Icons.check_box),
                      SizedBox(width: 5.0),
                      Text('PayPal'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:1.0),
            Container(
              width: 400,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 2,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      SizedBox(width: 5.0),
                      Icon(Icons.check_box),
                      SizedBox(width: 5.0),
                      Text('Credit/Debit card'),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  SizedBox(width: 5.0),
                  Icon(Icons.phone_android),
                  Text('We care about your security!'),
                ],
              ),
            ),

            Container(
              width: 600,
              margin: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                //   Text('You may be prompted to enter a code from an SMS sent by you bank to'
                //       ' verify the payment in your banks mobile app to complete your bank card payment'),
                ],
              ),
            ),
            RoundedButton(
              text: "NEXT",
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