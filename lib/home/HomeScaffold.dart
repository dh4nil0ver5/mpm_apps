import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mpm_apps/home/CompanyNews.dart';
import 'package:mpm_apps/home/FitureApps.dart';
import 'package:mpm_apps/home/HeadAccount.dart';
import 'package:mpm_apps/home/Menu.dart';
import 'package:mpm_apps/home/News.dart';
import 'package:mpm_apps/home/Notifys.dart';
import 'package:mpm_apps/home/SlideImage.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({Key key}) : super(key: key);

  @override
  State<HomeScaffold> createState() => HomeScaffoldState();
}

class HomeScaffoldState extends State<HomeScaffold> {
  bool scrollEnabled = true;
  ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        title: Center(
            child: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Notifys()),
                );
              },
              icon: Icon(Icons.notifications, color: Colors.white)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Menu()),
                );
              },
              icon: Icon(Icons.list_sharp, color: Colors.white)),
        ],
      ),
      body: Stack(
        children: [     //
      Positioned(
        child: ListView(
          controller: _controller,
          children: const [
            HeadAccount(),
            SlideImage(),
            FitureApps(),
            News(),
            CompanyNews(),
          ],
        ),
      )
        ],
      ),
    );
  }
}
