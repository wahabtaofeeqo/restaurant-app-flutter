import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ThemeData theme = Theme.of(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: TextField(
              keyboardType: TextInputType.text,
              autocorrect: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300], width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: theme.primaryColor, width: 1.0),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 28.0,
                  color: theme.primaryColor,
                ),
                hintText: 'Find a food or Restaurant',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 19.0,
                ),
              ),
            ),
          ),

          Container(
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: 100,
                  padding: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.all_inclusive,
                        color: theme.primaryColor,
                      ),

                      Padding(
                        child: const Text("All"),
                        padding: const EdgeInsets.only(top: 5),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 16, left: 10),
                  width: 100,
                  padding: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.all_inclusive,
                        color: theme.primaryColor,
                      ),

                      Padding(
                        child: const Text("Popular"),
                        padding: const EdgeInsets.only(top: 5),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 16, left: 10),
                  width: 100,
                  padding: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.all_inclusive,
                        color: theme.primaryColor,
                      ),

                      Padding(
                        child: const Text("Popular"),
                        padding: const EdgeInsets.only(top: 5),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 16, left: 10),
                  width: 100,
                  padding: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.all_inclusive,
                        color: theme.primaryColor,
                      ),

                      Padding(
                        child: const Text("Popular"),
                        padding: const EdgeInsets.only(top: 5),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 16, left: 10),
                  width: 100,
                  padding: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.all_inclusive,
                        color: theme.primaryColor,
                      ),

                      Padding(
                        child: const Text("Popular"),
                        padding: const EdgeInsets.only(top: 5),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),

          Container(
            height: 70,
            padding: const EdgeInsets.all(16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Text("Filter by", textAlign: TextAlign.center,),

                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 10),
                  child:  FlatButton(
                    child: Text("Food", style: TextStyle(color: Colors.white),),
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    onPressed: () {},
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child:  FlatButton(
                    child: Text("Drinks", style: TextStyle(color: Colors.white),),
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    onPressed: () {},
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child:  FlatButton(
                    child: Text("Stars", style: TextStyle(color: Colors.white),),
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    onPressed: () {},
                  ),
                ),

              ],
            ),
          ),
          
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: _row(),
                  onTap: () {
                    Navigator.pushNamed(context, "details", arguments: {});
                  },
                ),

                GestureDetector(
                  child: _row(),
                  onTap: () {
                    Navigator.pushNamed(context, "details", arguments: {});
                  },
                ),

                GestureDetector(
                  child: _row(),
                  onTap: () {
                    Navigator.pushNamed(context, "details", arguments: {});
                  },
                ),

                GestureDetector(
                  child: _row(),
                  onTap: () {
                    Navigator.pushNamed(context, "details", arguments: {});
                  },
                ),

                GestureDetector(
                  child: _row(),
                  onTap: () {
                    Navigator.pushNamed(context, "details", arguments: {});
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _row() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
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