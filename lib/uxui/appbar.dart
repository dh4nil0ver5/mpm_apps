import 'package:flutter/material.dart';

class AppBars extends AppBar {
  AppBars()
      : super(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          // backgroundColor: Colors.white,
          title: Text(
            "this is app bar",
            style: TextStyle(color: Color(0x000000)),
          ),
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () => null,
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () => null,
            ),
          ],
        );
}
