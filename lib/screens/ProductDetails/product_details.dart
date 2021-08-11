 import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';

// class ProductDetails extends StatelessWidget {
//   const ProductDetails({
//     Key? key,
//   }) : super(key: key);

 class ProductDetails extends StatefulWidget {
   const ProductDetails({Key? key}) : super(key: key);

   @override
   _ShopPageState createState() => _ShopPageState();
 }

 class _ShopPageState extends State<ProductDetails> {
   num count = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              SizedBox(height: 5.0),
              Column(
                children: [
                  Container(
                    width: 400,
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      elevation: 10,
                      child:Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 1.0),
                             AspectRatio(
                              aspectRatio: 4 / 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  'https://cdn.dribbble.com/users/4861236/screenshots/14279740/automobile___car_promotion_poster_design__orange_.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 15.0),
                  Container(
                    width: 400,
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      elevation: 10,
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(height: 5.0),
                              Text('UGX 100,000',style: TextStyle(fontSize: 25)),
                              SizedBox(height: 5.0),
                              Text('Ignition Coil',),
                              SizedBox(height: 5.0),
                              // FlatButton(
                              //   splashColor: Colors.red,
                              //   color: Colors.amber,
                              //   textColor: Colors.white,
                              //   child: Text('Add To Cart',),
                              //   onPressed: () {},
                              // ),

                              Container(
                                margin: const EdgeInsets.all(15.0),
                                child: Row(
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
                                    Spacer(),
                                    FlatButton(
                                      splashColor: Colors.red,
                                        color: Colors.amber,
                                        textColor: Colors.white,
                                        child: Text('Add To Cart',),
                                        onPressed: () {},
                                    ),
                                  ],
                                ),
                                // margin: EdgeInsets.all(20),
                                // child: FlatButton(
                                //   splashColor: Colors.red,
                                //     color: Colors.amber,
                                //     textColor: Colors.white,
                                //     child: Text('Add To Cart',),
                                //     onPressed: () {},
                                // ),
                              ),

                            ],
                        ),

                      ),
                    ),

                  ),
                  SizedBox(height: 5.03),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        SizedBox(width: 5.0),
                        Text('PRODUCT DETAILS'),
                      ],
                    ),
                  ),

                  Container(
                    width: 400,
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      elevation: 10,
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(width: 5.0),
                            Text('Used Spare Parts,Vehicle Fitment	Brand and Year Specific Braking System Component. The braking system of a vehicle is a complex series of components that work together to stop its motion temporarily while driving or to maintain a steady position while parked.',style: TextStyle(fontSize: 17)),
                            SizedBox(width: 5.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.03),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        SizedBox(width: 5.0),
                        Text('CHECK OUT OTHER PRODUCTS'),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      elevation: 10,
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      'https://cdn3.louis.de/dynamic/articles/o_resize,w_1800,h_1800,m_limit,c_fff/dd.76.d7.10037628Motul71004T15W501l970DET0118.JPG',
                                      width: 100,
                                    ),
                                    SizedBox(height: 10.0),
                                    Text('Engine Oil'),
                                    SizedBox(height: 5.0),
                                    Text('UGX 11,000'),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}