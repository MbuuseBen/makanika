import 'package:book/components/rounded_button.dart';
import 'package:book/components/rounded_input_field.dart';
import 'package:book/screens/Shop/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    num count = 0;
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
              "YOUR DETAILS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),

            // Container(
            //   width: 400,
            //   child: Card(
            //     margin: const EdgeInsets.symmetric(horizontal: 0.0),
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            //     elevation: 5,
            //     child:Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child: Column(
            //         children: const [
            //           SizedBox(width: 5.0),
            //           Text('Address'),
            //           SizedBox(width: 5.0),
            //           Text('Jude Vercetti,Mayfair 322,'),
            //           Text('38382 London,United Kingdom'),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              width: 400,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 5,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        child: Row(
                          children: const [
                            Text('Address',style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                                                    ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.all(5.0),
                        child: Row(
                          children: const [
                            Text('Jude Vercetti,Mayfair 322,',),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
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
                elevation: 5,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        child: Row(
                          children: const [
                            Text('Payment Method',style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.all(5.0),
                        child: Row(
                          children: const [
                            Text('Credit/Debit card',),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ],

                  ),

                ),
              ),
            ),
            SizedBox(height: 6),
            Text(
              "CART DETAILS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Container(
              height: 250,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 10,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.all(5.0),
                          child: Row(children: [
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 40, //we give the image a radius of 50
                                    backgroundImage: NetworkImage('https://webstockreview.net/images/male-clipart-professional-man-3.jpg'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: Column(
                                children: const [
                                  const SizedBox(height: 6),
                                  Text('DT Timing Belt',style: TextStyle(fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 6),
                                  Text('Discount 20%'),
                                  const SizedBox(height: 6),
                                  Text('506,000',style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  ElegantNumberButton(
                                    initialValue: count,
                                    buttonSizeWidth: 40,
                                    buttonSizeHeight: 35,
                                    color: Colors.amber,
                                    minValue: 0,
                                    maxValue: 100,
                                    step: 1,
                                    decimalPlaces: 0,
                                    onChanged: (value) { // get the latest value from here
                                      setState(() {
                                        count = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        );
                      }),
                ),
              ),
            ),
            SizedBox(height: 5.0),
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
                      Text('Safe Order'),
                      Spacer(),
                      Text('3,95'),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 5.0),
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
                      Text(
                        "you can return ....",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "DISCOUNT COUPON",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
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
                      Text(
                        "Add a coupon",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.add),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "TOTAL",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 400,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 5,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      children: [
                  Container(
                  margin: const EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                        Text('Safe Order'),
                        Spacer(),
                        Text('3,95'),
                    ],
                  ),
                ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          child: Row(
                            children: const [
                              Text('SubTotal'),
                              Spacer(),
                              Text('23,95'),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          child: Row(
                            children: const [
                              Text('Delivery'),
                              Spacer(),
                              Text('8,95'),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          child: Row(
                            children: const [
                              Text('Order Total'),
                              Spacer(),
                              Text('37,95'),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          child: Row(
                            children: const [
                              Text('incl.20% VAT'),

                            ],
                          ),
                        ),
                    // children: const [
                    //   SizedBox(width: 5.0),
                    //   Text('Safe Order'),
                    //   Spacer(),
                    //   Text('3,95'),
                     ],

                  ),

                ),
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
            RaisedButton(onPressed: ()=> null,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("SHOP NOW")
                ],
              ),)
            )
          ],
        ),
      ),
    );
  }
}