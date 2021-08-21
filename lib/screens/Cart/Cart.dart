import 'dart:math';

import 'package:book/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    num count = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Cart'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // SizedBox(height: 5.0),
          // Wrap(
          //   children: _services.map((_data) {
          //     final _color = Color((Random().nextDouble() * 0xFFFFFF).toInt());
          //     return FractionallySizedBox(
          //       widthFactor: 0.19,
          //       child: Container(
          //         margin: const EdgeInsets.all(10.0),
          //         child: Row(children: [
          //             Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //
          //             ],
          //             ),
          //
          //         ]),
          //       ),
          //     );
          //   }).toList(),
          // ),

          Container(
            height: 550,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              elevation: 10,
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: 6,
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
                                Text('DT Timing Belt'),
                                const SizedBox(height: 6),
                                Text('Discount 20%'),
                                const SizedBox(height: 6),
                                Text('506,000'),
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
          SizedBox(width: 5.0),
          // Container(
          //   margin: const EdgeInsets.all(10.0),
          //   child: Row(children: [
          //     Container(
          //       margin: const EdgeInsets.all(15.0),
          //       child: Column(
          //         children: const [
          //           CircleAvatar(
          //             radius: 40, //we give the image a radius of 50
          //             backgroundImage: NetworkImage(
          //                 'https://webstockreview.net/images/male-clipart-professional-man-3.jpg'),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       margin: const EdgeInsets.all(15.0),
          //       child: Column(
          //         children: const [
          //           const SizedBox(height: 6),
          //            Text('DT Timing Belt'),
          //           const SizedBox(height: 6),
          //            Text('Discount 20%'),
          //           const SizedBox(height: 6),
          //            Text('506,000'),
          //         ],
          //       ),
          //     ),
          //
          //     Container(
          //       margin: const EdgeInsets.all(15.0),
          //       child: Column(
          //         children: [
          //           ElegantNumberButton(
          //             initialValue: count,
          //             buttonSizeWidth: 40,
          //             buttonSizeHeight: 35,
          //             color: Colors.amber,
          //             minValue: 0,
          //             maxValue: 100,
          //             step: 1,
          //             decimalPlaces: 0,
          //             onChanged: (value) { // get the latest value from here
          //               setState(() {
          //                 count = value;
          //               });
          //             },
          //           ),
          //         ],
          //       ),
          //     ),
          //   ]),
          //
          // ),

          RoundedButton(
            text: "CHECKOUT",
            press: () {},
          ),
        ]),


      ),

    );
  }
}