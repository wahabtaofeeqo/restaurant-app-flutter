import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  height: 250,
                  child: FittedBox(
                    child: Image.asset("images/header.jpeg"),
                    fit: BoxFit.fill,
                  )
              ),

              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _box(context, "Eat & Drink", 1),
                    _box(context, "What to do", 2),
                    _box(context, "Places to visit", 3),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  children: <Widget>[
                    Padding(
                      child: Text("Looking for something special?",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),),
                      padding: const EdgeInsets.only(bottom: 18),
                    ),

                    Padding(
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",
                      style: TextStyle(height: 1.5),
                      textAlign: TextAlign.center,),
                      padding: const EdgeInsets.only(bottom: 5),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                padding:  const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage("images/email.jpg"),
                              ),
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.only(bottom: 10),
                            ),

                            Text("Email")
                          ],
                        )
                    ),

                    Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage("images/messanger.png"),
                              ),
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.only(bottom: 10),
                            ),

                            Text("Messanger")
                          ],
                        )
                    ),

                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage("images/whatsapp.jpg"),
                            ),
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.only(bottom: 10),
                          ),

                          Text("Whatsapp")
                        ],
                      )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }

  Widget _box(context, title, int p) {

    String icon = "images/header.jpeg";
    switch(p) {
      case 1:
        icon = "images/header.jpeg";
        break;

      case 2:
        icon = "images/todo.jpeg";
        break;

      case 3:
        icon = "images/places.jpg";
        break;

      case 4:
        icon = "images/restaurant.jpg";
    }

    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        child: Column(
          children: <Widget>[
            Container(
              width: 120,
              height: 80,
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), topLeft: Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage(icon),
                  )
              ),
            ),

           Padding(
             padding: EdgeInsets.all(5),
             child:  Text(
               title,
               style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold,),
               textAlign: TextAlign.center,
             ),
           )
          ],
        ),
        onTap: () {
          Navigator.pushNamed(context, 'home', arguments: {});
        },
      )
    );
  }
}