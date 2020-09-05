import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: 3,
        itemBuilder: (context, index) => _row(),
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }

  Widget _row() {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
              flex: 1,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/food.jpg"),
              )
          ),

          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("AMLFA CAFE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text("@restaurant", style: TextStyle(color: Colors.grey),),
                    ),
                    Text("Best in all kind of food, drinks small chops", style: TextStyle(color: Colors.grey), overflow: TextOverflow.ellipsis,),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.add_location, size: 16, color: Colors.grey,),
                          ),
                          Text("Location", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    )
                  ],
                ),
              )
          ),

          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.timer, size: 16, color: Colors.grey,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("Opens", overflow: TextOverflow.ellipsis,),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("8: AM", overflow: TextOverflow.ellipsis,),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}