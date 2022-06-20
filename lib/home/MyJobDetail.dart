import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyJobDetail extends StatefulWidget {
  const MyJobDetail({Key key}) : super(key: key);

  @override
  State<MyJobDetail> createState() => _MyJobDetailState();
}

class _MyJobDetailState extends State<MyJobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("JOB PROFILE")),
      ),
      body: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black87, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(20.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
