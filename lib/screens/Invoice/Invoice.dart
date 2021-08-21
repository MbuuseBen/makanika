import 'package:book/components/rounded_button.dart';
import 'package:book/components/rounded_input_field.dart';
import 'package:book/screens/Shop/shop_page.dart';
import 'package:flutter/material.dart';

class Invoice extends StatelessWidget {
  const Invoice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Invoice & Delivery'),
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
              "Please provide us with your email address so we can send you your invoice and tracking information",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            // Text(
            //   "Email",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'E-Mail'),
                onChanged: (value) {},
              ),
            ),

            SizedBox(height: 5),

            Container(
              margin: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  SizedBox(width: 5.0),
                  Text('SELECT SHIPPING ADDRESS'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  SizedBox(width: 5.0),
                  Icon(Icons.check_box),
                  Text('Use the same address for billing'),
                ],
              ),
            ),
            Container(
              width: 400,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 1,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(width: 5.0),
                      Text('Jude Vercetti'),
                      Text('Mayfair 322'),
                      Text('38382 London'),
                      Text('United Kingdom'),
                       SizedBox(width: 5.0),
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
                  Text('ADD A NEW ADDRESS'),
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