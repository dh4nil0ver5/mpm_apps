import 'package:flutter/material.dart';
import 'package:mpm_apps/home/DetailInfo.dart';

class Menu extends StatefulWidget {
  const Menu({Key key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "NOTIFICATION",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.black,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailInfo()),
                  );
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Info',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.grey,
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Document',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.grey,
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'E-Payslip',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
