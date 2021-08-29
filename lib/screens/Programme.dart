import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Programme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> events =["Food & Shop","Order Ride","Deliver Package","Buy Airtime"];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text(
            'Grid',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/main_top.png"),
        //       fit: BoxFit.cover,
        //     ),
            // borderRadius:
            // BorderRadius.all(Radius.circular(20.0),),
            child:Container(
              margin: const EdgeInsets.only(top: 120.0),
              child: GridView(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: events.map((title){
                  return GestureDetector(
                    child: Card(
                      margin: const EdgeInsets.all(20.0),
                      child: getCardByTitle(title),

                    ),
                    onTap: (){},);
                }).toList(),

              ),

            )
        ),
 //     ),
    );

  }
  Column  getCardByTitle(String title){
    String img ="";
    if(title == "Mbuuse")
      img = "assets/images/main_top.png";
    else if (title == "Ben")
      img = "assets/images/main_top.png";
    else if (title == "George")
      img = "assets/icons/twitter.svg";
    else
      img = "assets/icons/google-plus.svg";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Center(
          child: Container(
            child: new Stack(
              children:<Widget> [
                new Image.asset(
                    img,
                  width: 80.0,
                  height: 80.0,
                )
              ],
            ),
          ),
        ), Text(
          title,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,


          ),
        )
      ],
    );
  }
}