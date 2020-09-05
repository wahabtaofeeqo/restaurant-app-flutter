import 'package:flutter/material.dart';
import 'package:resturants/app/tabs/account.dart';
import 'package:resturants/app/tabs/cart.dart';
import 'package:resturants/app/tabs/contents.dart';
import 'package:resturants/app/tabs/nearby.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ThemeData theme = Theme.of(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Places to eat & Drink"),
        ),
        body: TabBarView(
          children: <Widget>[
            Contents(),
            NearBy(),
            Account()
          ],
        ),

        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            labelPadding: const EdgeInsets.only(bottom: 0),
            labelStyle: TextStyle(fontSize: 12.0),
            indicatorColor: Colors.transparent,
            labelColor: theme.primaryColor,
            unselectedLabelColor: Colors.black54,

            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home, size: 28),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.gps_not_fixed, size: 28),
                text: 'Near By',
              ),
              Tab(
                icon: Icon(Icons.person_outline, size: 28),
                text: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}