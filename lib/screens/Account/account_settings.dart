import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
    Key? key,
  }) : super(key: key);

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
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber[500],
                    radius: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/117862276/original/4c876fafd6d41f6b2cc05142195cb404348b7505/create-an-avatar-for-your-profile-photo.png"), //NetworkImage
                      radius: 75,
                    ), //CircleAvatar
                  ), //
                  SizedBox(height: 5.0),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [

                        SizedBox(width: 5.0),
                        Text('ACCOUNT DETAILS'),

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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(width: 5.0),
                            Text('First Name ',style: TextStyle(fontSize: 15)),
                            SizedBox(height: 15.0),
                            Text('Last Name',style: TextStyle(fontSize: 15)),
                            SizedBox(height: 15.0),
                            Text('Phone Number',style: TextStyle(fontSize: 15)),
                            SizedBox(height: 15.0),
                            Text('Address',style: TextStyle(fontSize: 15)),
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
                        Text('CAR DETAILS'),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(width: 5.0),
                            Text('Car : Mini Cooper',style: TextStyle(fontSize: 15)),
                            SizedBox(height: 15.0),
                            Text('Number of seats : 4 ',style: TextStyle(fontSize: 15)),
                            SizedBox(height: 15.0),
                            Text('Engine Configuration : TwinPower Turbo, 1.5-liter, inline 3-cylinder direct-injection engine with double VANOS',style: TextStyle(fontSize: 15)),
                            SizedBox(height: 15.0),
                            Text('Horse Power : 136 hp @ 6500 rpm ',style: TextStyle(fontSize: 15)),
                            SizedBox(height: 15.0),
                            Text('Fuel Tank Capacity : 11.6 gallons',style: TextStyle(fontSize: 15)),
                          ],
                        ),
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