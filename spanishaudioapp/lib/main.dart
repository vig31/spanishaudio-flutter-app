import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: "Oswald",
        primaryColor: Color(0xff476e8f),
        appBarTheme: AppBarTheme(
          color: Color(0xff476e8f),
        ),
      ),
      title: "Learn Spanish numbers",
      home: Homepage(),
    );
  }
}
