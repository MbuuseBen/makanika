import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            decoration: InputDecoration(
                hintText: "What do you want to fix?",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                border: const OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            child: Image.network(
                'https://cdn.dribbble.com/users/4861236/screenshots/14279740/automobile___car_promotion_poster_design__orange_.jpg'),
          ),


          Container(
    // alignment: Alignment.centerLeft,
    // margin: const EdgeInsets.symmetric(horizontal: 5.0),
            width: 400,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
              elevation: 10,
              child:Padding(
                padding: const EdgeInsets.all(5.0),
                child: Wrap(
            children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                .map(
                  (e) => Container(
                margin: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Icon(Icons.car_rental),
                  ),
                  SizedBox(height: 5.0),
                  Text('Engine'),
                ]),
              ),
            )
                .toList(),
          ),
    ),
    ),
    ),
          Container(
            margin: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Icon(Icons.car_repair),
                SizedBox(width: 5.0),
                Text('Vehicle Type'),
                Spacer(),
                Text('More'),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 7.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 10,
                child:Padding(
                  padding: const EdgeInsets.all(5.0),
              child: Wrap(
                children: [1, 2, 3, 4, 5, 6, 7, 8, 9]
                    .map(
                      (e) => Container(
                    margin: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.car_rental),
                        SizedBox(width: 5.0),
                        Text('Car name'),
                      ],
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ),
            ),),
          Container(
            margin: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Icon(Icons.fireplace),
                SizedBox(
                  width: 5.0,
                ),
                Text('Hot Deal'),
                Spacer(),
                Text('More'),
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
                        Text('UGX 10,000'),
                      ],
                    ),
                  );
                }),
          ),
    ),
          ),
        ]),
      ),
    );
  }
}