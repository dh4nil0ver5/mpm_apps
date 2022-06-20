import 'package:flutter/material.dart';
import 'package:mpm_apps/home/MyJobDetail.dart';

class DetailInfo extends StatefulWidget {
  const DetailInfo({Key key}) : super(key: key);

  @override
  State<DetailInfo> createState() => _DetailInfoState();
}

class _DetailInfoState extends State<DetailInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Personal Information",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.black,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Working Information",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.black,
              ),
              InkWell(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Job Profile",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyJobDetail()),
                  );
                },
              ),
              Divider(
                height: 20,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
