import 'package:flutter/material.dart';

class HeadAccount extends StatelessWidget {
  const HeadAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Senin, 4 April 2022",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Salam Satu Hati,",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.orange.shade900),
                    ),
                    Text(
                      "Nama Karyawan: ",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.orange.shade900),
                    ),
                  ],
                ),
              ),
            ),
            // Text("data"),
            Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://via.placeholder.com/140x100'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
