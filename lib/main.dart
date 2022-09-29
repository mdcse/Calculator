import 'package:calculator/components/postfix.dart';
import 'package:calculator/components/prefix.dart';
import 'package:calculator/components/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'infix.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is t
  //he root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootApp(),

      routes: {
        "/In" : (context) => InFix(),
        "/Post" : (context) => PostFix(),
        "/Pre" : (context) => PreFix(),
        "/Root" : (context) => RootApp(),
      },
    );
  }
}
