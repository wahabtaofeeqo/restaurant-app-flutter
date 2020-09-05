import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              
              child: CarouselSlider.builder(
                options: CarouselOptions(height: 250, autoPlay: true,),
                itemCount: 2,
                itemBuilder: (BuildContext context, int itemIndex) =>
                    Container(
                      child: Image.asset("images/food.jpg", fit: BoxFit.fill,),
                    ),
              )
            ),

            Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text("ALMA CAFE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Coffeeshop")
            ),

            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Open at 9: am"),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add_call),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("0900000000000"),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: <Widget>[
                  Icon(Icons.add_location),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("10, Johnson close, off Filling station"),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 16),
              child: Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16, right: 16),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod"
                  "\tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,"
                  "\quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
                  "\consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse"
                  "\cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non"
                  "\proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "\tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,"
                  "\quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
                  "\consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse"
                  "\cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non"
                  "\proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "\tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,"
                  "\quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
                  "\consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse"
                  "\cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non"
                  "\proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            ),

          ],
        ),
      ),
    );
  }
}