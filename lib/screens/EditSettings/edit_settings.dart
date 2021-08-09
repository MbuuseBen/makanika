import 'package:book/components/rounded_input_field_plain.dart';
import 'package:flutter/material.dart';


class EditSettings extends StatelessWidget {
  const EditSettings({
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
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // SizedBox(width: 5.0),
                            Text(
                              "FIRST NAME",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            RoundedInputFieldPlain(
                              hintText: "First Name",
                              onChanged: (value) {},
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "LAST NAME",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            RoundedInputFieldPlain(
                              hintText: "Last Name",
                              onChanged: (value) {},
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "PHONE NUMBER",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            RoundedInputFieldPlain(
                              hintText: "Phone Number",
                              onChanged: (value) {},
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "EMAIL",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            RoundedInputFieldPlain(
                              hintText: "Email",
                              onChanged: (value) {},
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "ADDRESS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            RoundedInputFieldPlain(
                              hintText: "Address",
                              onChanged: (value) {},
                            ),
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