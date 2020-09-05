import 'package:flutter/material.dart';
import 'package:resturants/app/tabs/favourites.dart';
import 'package:resturants/app/tabs/settings.dart';


class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with TickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    this._tabController = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    ThemeData theme = Theme.of(context);

    return Column(
      children: <Widget>[
        Container(
          height: 150,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 24, bottom: 16),
                child: CircleAvatar(
                  child: Icon(Icons.supervised_user_circle),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text("Taofeek Wahab", style: TextStyle(fontSize: 18,),),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text("Location, address", style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
        ),

        Container(
          color: Colors.white,
          child: TabBar(
            controller: this._tabController,
            indicatorColor: theme.primaryColor,
            labelColor: theme.primaryColor,
            labelStyle: TextStyle(fontSize: 20.0),
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'Favorites'),
              Tab(text: 'Settings'),
            ],
          ),
        ),

        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: TabBarView(
                controller: this._tabController,
                children: <Widget>[
                  Favourites(),
                  Settings(),
                ],
              ),
          ),
        )
      ],
    );
  }
}