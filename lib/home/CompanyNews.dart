import 'package:flutter/material.dart';

class CompanyNews extends StatefulWidget {
  const CompanyNews({Key key}) : super(key: key);

  @override
  State<CompanyNews> createState() => _CompanyNewsState();
}

class _CompanyNewsState extends State<CompanyNews> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Expanded(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("Company News",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        padding: EdgeInsets.only(right: 15),
                        child: TextButton(
                            onPressed: () {}, child: Text("Lihat semua !")),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
