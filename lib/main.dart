import 'package:flutter/material.dart';

import 'home/HomeScaffold.dart';
import 'login/login_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: Colors.green,
        ),
        primaryColor: Colors.amber.shade900,
        textTheme:
            const TextTheme(bodyText2: TextStyle(color: Colors.amberAccent)),
      ),
      routes: {
        '/': (context) => LoginScaffold(),
        '/home': (context) => HomeScaffold(),

      },
      initialRoute: '/',
    );
  }
}
